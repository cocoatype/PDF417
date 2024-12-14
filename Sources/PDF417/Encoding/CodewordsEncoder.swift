import BigInt
import Foundation

public struct CodewordsEncoder {
    public init() {}

    public func dataCodewords(for data: Data) throws -> [Codeword] {
        var codewords = [Codeword]()
        var cursor = data.startIndex
        var currentCompactionMode = CompactionMode.text

        let bytes = tagger.findSequences(in: data)
        while cursor < data.endIndex {
            let byte = bytes[cursor]
            switch byte.mode {
            case .numeric:
                if currentCompactionMode.isNumber == false {
                    codewords.append(Codeword.numericLatch)
                }

                currentCompactionMode = .numeric
                let consecutiveNumbers = bytes[cursor...].prefix(while: \.mode.isNumber)
                try codewords.append(contentsOf: numericParser.payload(for: Data(consecutiveNumbers.map(\.value))))
                cursor = cursor.advanced(by: consecutiveNumbers.count)
            case .text:
                if currentCompactionMode.isText == false {
                    codewords.append(Codeword.textLatch)
                }

                currentCompactionMode = .text
                let consecutiveText = bytes[cursor...].prefix(while: \.mode.isText)
                try codewords.append(contentsOf: textParser.payload(for: Data(consecutiveText.map(\.value))))
                cursor = cursor.advanced(by: consecutiveText.count)
            case .byte:
                let consecutiveBytes = bytes[cursor...].prefix(while: \.mode.isByte)
                if consecutiveBytes.count == 1 && currentCompactionMode == .text {
                    codewords.append(Codeword.byteShift)
                } else if consecutiveBytes.count % 6 == 0 && currentCompactionMode.isByte == false {
                    codewords.append(Codeword.byteLatchMod6)
                    currentCompactionMode = .byte
                } else if currentCompactionMode.isByte == false {
                    codewords.append(Codeword.byteLatch)
                    currentCompactionMode = .byte
                }

                try codewords.append(contentsOf: byteParser.payload(for: Data(consecutiveBytes.map(\.value))))
                cursor = cursor.advanced(by: consecutiveBytes.count)
            }
        }

        // prepend symbol length
        try codewords.insert(codewordConverter.codeword(for: codewords.count + 1), at: 0)

        return codewords
    }

    public func dataCodewords(for string: String) throws -> [Codeword] {
        guard let data = string.data(using: .ascii) else {
            throw PDF417PayloadParseError.unrepresentableInASCII
        }

        return try dataCodewords(for: data)
    }

    public func correctionCodewords(for codewords: [Codeword], correctionLevel: CorrectionLevel) throws -> [Codeword] {
        try correctionCalculator.correctionCodewords(for: codewords, level: correctionLevel)
    }

    private let tagger = ByteTagger()
    private let codewordConverter = IntToCodewordConverter()
    private let numericParser = NumericEncoder()
    private let textParser = TextEncoder()
    private let byteParser = ByteEncoder()
    private let correctionCalculator = CorrectionCalculator()
}

enum PDF417PayloadParseError: Error {
    case unrepresentableInASCII
}
