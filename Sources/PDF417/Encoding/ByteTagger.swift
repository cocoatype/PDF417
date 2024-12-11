import Foundation

struct ByteTagger {
    struct PartiallyTaggedByte {
        let mode: CompactionMode?
        let value: UInt8
    }

    struct TaggedByte {
        let mode: CompactionMode
        let value: UInt8
    }

    func findSequences(in data: Data) -> [TaggedByte] {
        findByteSequences(in: findTextSequences(in: findNumericSequences(in: data)))
    }

    private func findNumericSequences(in data: Data) -> [PartiallyTaggedByte] {
        var cursor = data.startIndex
        var sequences = [Range<Int>]()

        while cursor < data.endIndex {
            let consecutiveDigits = data[cursor...].indices.prefix(while: { index in
                numericParser.canParse(data[index])
            })
            if consecutiveDigits.count >= 13 {
                sequences.append(consecutiveDigits)
            }

            if consecutiveDigits.count == 0 {
                cursor = cursor.advanced(by: 1)
            } else {
                cursor = cursor.advanced(by: consecutiveDigits.count)
            }
        }

        let numericIndices = sequences.flatMap { $0 }

        return data.indices.map { index in
            let byte = data[index]
            if numericIndices.contains(index) {
                return PartiallyTaggedByte(mode: .numeric, value: byte)
            } else {
                return PartiallyTaggedByte(mode: nil, value: byte)
            }
        }
    }

    private func findTextSequences(in bytes: [PartiallyTaggedByte]) -> [PartiallyTaggedByte] {
        var cursor = bytes.startIndex
        var sequences = [Range<Int>]()

        while cursor < bytes.endIndex {
            let consecutiveText = bytes[cursor...].indices.prefix(while: { index in
                let byte = bytes[index]
                if byte.mode != nil {
                    return false
                } else {
                    return textParser.canParse(byte.value)
                }
            })

            if consecutiveText.count >= 5 {
                sequences.append(consecutiveText)
            }

            if consecutiveText.count == 0 {
                cursor = cursor.advanced(by: 1)
            } else {
                cursor = cursor.advanced(by: consecutiveText.count)
            }
        }

        let textIndices = sequences.flatMap { $0 }

        return bytes.indices.map { index in
            let byte = bytes[index]
            if let mode = byte.mode {
                return PartiallyTaggedByte(mode: mode, value: byte.value)
            } else if textIndices.contains(index) {
                return PartiallyTaggedByte(mode: .text, value: byte.value)
            } else {
                return PartiallyTaggedByte(mode: nil, value: byte.value)
            }
        }
    }

    private func findByteSequences(in bytes: [PartiallyTaggedByte]) -> [TaggedByte] {
        bytes.map { byte in
            if let mode = byte.mode {
                return TaggedByte(mode: mode, value: byte.value)
            } else {
                return TaggedByte(mode: .byte, value: byte.value)
            }
        }
    }

    private let textParser = TextEncoder()
    private let numericParser = NumericEncoder()
}
