import Foundation

struct DecodingTagger {
    struct Sequence {
        let mode: CompactionMode
        let codewords: [Codeword]
    }

    private let codewordConverter = CodewordToIntConverter()
    func sequences(in codewords: [Codeword]) throws -> [Sequence] {
        guard let lengthCodeword = codewords.first,
              codewordConverter.value(for: lengthCodeword) > 1,
              codewordConverter.value(for: lengthCodeword) == codewords.count
        else {
            throw DecodingTaggerError.incorrectLength
        }

        var cursor = codewords.startIndex + 1 // ignore the length indicator
        var sequences: [Sequence] = []
        var currentCompactionMode = CompactionMode.text

        while cursor < codewords.endIndex {
            let contents = codewords[cursor...].prefix(while: { codeword in
                Codeword.modeChangers.contains(codeword) == false
            })

            if contents.count == 0 {
                let codeword = codewords[cursor]
                switch codeword {
                case .numericLatch:
                    currentCompactionMode = .numeric
                    cursor = cursor.advanced(by: 1)
                case .textLatch:
                    currentCompactionMode = .text
                    cursor = cursor.advanced(by: 1)
                case .byteLatch, .byteLatchMod6:
                    currentCompactionMode = .byte
                    cursor = cursor.advanced(by: 1)
                case .byteShift where cursor + 1 < codewords.count:
                    let nextCodeword = codewords[cursor + 1]
                    sequences.append(Sequence(mode: .byte, codewords: [nextCodeword]))
                default:
                    cursor = cursor.advanced(by: 1)
                }
            } else {
                sequences.append(Sequence(mode: currentCompactionMode, codewords: Array(contents)))
                cursor = cursor.advanced(by: contents.count)
            }
        }
        
        return sequences
    }
}

enum DecodingTaggerError: Error {
    case incorrectLength
}
