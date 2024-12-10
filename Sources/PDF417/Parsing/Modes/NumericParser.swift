import BigInt
import Foundation

struct NumericParser {
    private static let supportedByteRange: ClosedRange<UInt8> = 0x30...0x39
    func canParse(_ byte: UInt8) -> Bool {
        Self.supportedByteRange.contains(byte)
    }

    func payload(for data: Data) throws -> [Codeword] {
        guard let string = String(data: data, encoding: .ascii) else {
            throw NumericParseError.notValidASCII
        }

        return try payload(for: string)
    }

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
            guard let int = BigUInt(string, radix: 10) else { throw NumericParseError.notANumber }
            return int
        }

        // convert to base 900
        return try strings
            .flatMap(\.mantissasAreEvil)
            .map(codewordConverter.codeword(for:))
    }

    private let codewordConverter = IntToCodewordConverter()
}

enum NumericParseError: Error {
    case notValidASCII
    case notANumber
}
