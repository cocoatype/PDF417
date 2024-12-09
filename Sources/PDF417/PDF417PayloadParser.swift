import BigInt

struct PDF417PayloadParser {
    func payload(for string: String) throws -> [Codeword] {
        // break into 44-character strings
        let strider = stride(from: 0, to: string.count, by: 44)
        let strings = try strider.map { startOffset in
            let startIndex = string.index(string.startIndex, offsetBy: startOffset)
            let endOffset = Swift.min(startOffset + 44, string.count)
            let endIndex = string.index(string.startIndex, offsetBy: endOffset)
            return String(string[startIndex ..< endIndex])
        }.map {
            // append 1 to each string
            var copy = $0
            copy.insert("1", at: $0.startIndex)
            return copy
        }.map { (string: String) throws -> BigUInt in
            // convert to actual integer value
            guard let int = BigUInt(string, radix: 10) else { throw PDF417PayloadParseError.notANumber }
            return int
        }

        // convert to base 900
        var codewords = try strings
            .flatMap(\.mantissasAreEvil)
            .map(codewordConverter.codeword(for:))

        // prepend length + latch codewords
        codewords.insert(.w902, at: 0)
        try codewords.insert(codewordConverter.codeword(for: codewords.count + 1), at: 0)

        // pass to error correction
        let corrections = try correctionCalculator.correctionCodewords(for: codewords, level: .level2)

        // append corrections
        return codewords + corrections
    }

    private let correctionCalculator = CorrectionCalculator()
    private let codewordConverter = IntToCodewordConverter()
}

enum PDF417PayloadParseError: Error {
    case notANumber
}
