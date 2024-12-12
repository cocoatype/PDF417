import Testing

@testable import PDF417

struct TextEncoderTests {
    private static let horizontalTab = UInt8(ascii: "\t")
    private static let lineFeed = UInt8(ascii: "\n")
    private static let carriageReturn = UInt8(ascii: "\r")
    private static let printableCharacters: ClosedRange<UInt8> = 0x20...0x7e

    @Test("Can parse printable ASCII characters", arguments: Self.printableCharacters)
    func canParseASCIIPrintableCharacters(_ value: UInt8) {
        let parser = TextEncoder()
        #expect(parser.canParse(value))
    }

    @Test("Can parse some unprintable ASCII characters", arguments: [Self.horizontalTab, Self.lineFeed, Self.carriageReturn])
    func canParseASCIIUnprintableCharacters(_ value: UInt8) {
        let parser = TextEncoder()
        #expect(parser.canParse(value))
    }

    @Test("Cannot parse other unprintable ASCII values", arguments: [UInt8]([0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x0b, 0x0c, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x7f]))
    func cannotParseUnsupportedASCIIValue(_ value: UInt8) {
        let parser = TextEncoder()
        #expect(!parser.canParse(value))
    }
}
