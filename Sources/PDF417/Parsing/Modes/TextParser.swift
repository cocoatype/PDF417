import Foundation

struct TextParser {
    private static let horizontalTab = UInt8(ascii: "\t")
    private static let lineFeed = UInt8(ascii: "\n")
    private static let carriageReturn = UInt8(ascii: "\r")
    private static let printableCharacters: ClosedRange<UInt8> = 0x20...0x7e
    func canParse(_ byte: UInt8) -> Bool {
        return byte == Self.horizontalTab ||
        byte == Self.lineFeed ||
        byte == Self.carriageReturn ||
        Self.printableCharacters ~= byte
    }

    func payload(for data: Data) throws -> [Codeword] {
        return []
    }
}
