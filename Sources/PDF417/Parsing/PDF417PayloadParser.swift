import BigInt
import Foundation

struct PDF417PayloadParser {
    private static let numericLatch = Codeword.w902
    private static let textLatch = Codeword.w900
    private static let byteShift = Codeword.w913
    private static let byteLatch = Codeword.w901
    private static let byteLatchMod6 = Codeword.w924
    func payload(for data: Data) throws -> [Codeword] {
        var codewords = [Codeword]()
        var cursor = data.startIndex
        var currentCompactionMode = CompactionMode.text

        let bytes = tagger.findSequences(in: data)
        while cursor < data.endIndex {
            let byte = bytes[cursor]
            switch byte.mode {
            case .numeric:
                if currentCompactionMode.isNumber == false {
                    codewords.append(Self.numericLatch)
                }

                currentCompactionMode = .numeric
                let consecutiveNumbers = bytes[cursor...].prefix(while: \.mode.isNumber)
                try codewords.append(contentsOf: numericParser.payload(for: Data(consecutiveNumbers.map(\.value))))
                cursor = cursor.advanced(by: consecutiveNumbers.count)
            case .text:
                if currentCompactionMode.isText == false {
                    codewords.append(Self.textLatch)
                }

                currentCompactionMode = .text
                let consecutiveText = bytes[cursor...].prefix(while: \.mode.isText)
                try codewords.append(contentsOf: textParser.payload(for: Data(consecutiveText.map(\.value))))
                cursor = cursor.advanced(by: consecutiveText.count)
            case .byte:
                let consecutiveBytes = bytes[cursor...].prefix(while: \.mode.isByte)
                if consecutiveBytes.count == 1 && currentCompactionMode == .text {
                    codewords.append(Self.byteShift)
                } else if consecutiveBytes.count % 6 == 0 && currentCompactionMode.isByte == false {
                    codewords.append(Self.byteLatchMod6)
                    currentCompactionMode = .byte
                } else if currentCompactionMode.isByte == false {
                    codewords.append(Self.byteLatch)
                    currentCompactionMode = .byte
                }

                try codewords.append(contentsOf: byteParser.payload(for: Data(consecutiveBytes.map(\.value))))
                cursor = cursor.advanced(by: consecutiveBytes.count)
            }
        }

        // prepend symbol length
        try codewords.insert(codewordConverter.codeword(for: codewords.count + 1), at: 0)

        // pass to error correction
        let corrections = try correctionCalculator.correctionCodewords(for: codewords, level: .level2)

        // append corrections
        return codewords + corrections
    }

    func payload(for string: String) throws -> [Codeword] {
        guard let data = string.data(using: .ascii) else {
            throw PDF417PayloadParseError.unrepresentableInASCII
        }

        return try payload(for: data)
    }

    private let tagger = ByteTagger()
    private let codewordConverter = IntToCodewordConverter()
    private let numericParser = NumericParser()
    private let textParser = TextParser()
    private let byteParser = ByteParser()
    private let correctionCalculator = CorrectionCalculator()
}

enum PDF417PayloadParseError: Error {
    case unrepresentableInASCII
}
