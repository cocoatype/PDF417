import Testing
@testable import PDF417

struct NumericParserTests {
    @Test func numbersOnly() throws {
        let parser = NumericParser()
        let string = "0123456789012345"
        let actualResult = try parser.payload(for: string)
        let expectedResult = [Codeword.w017, .w129, .w672, .w001, .w224, .w745]

        #expect(actualResult == expectedResult)
    }

    private static let supportedByteRange: ClosedRange<UInt8> = 0x30...0x39
    @Test("Can parse ASCII values 0x30–0x39", arguments: Self.supportedByteRange)
    func canParseSupportedASCIIValue(_ value: UInt8) {
        let parser = NumericParser()
        #expect(parser.canParse(value))
    }

    private static let unsupportedLowerByteRange: ClosedRange<UInt8> = 0x00...0x2f
    @Test("Cannot parse ASCII values 0x00–0x2f", arguments: unsupportedLowerByteRange)
    func cannotParseUnsupportedLowerASCIIValue(_ value: UInt8) {
        let parser = NumericParser()
        #expect(!parser.canParse(value))
    }

    private static let unsupportedUpperByteRange: ClosedRange<UInt8> = 0x3a...0x7f
    @Test("Cannot parse ASCII values 0x3a–0x7f", arguments: unsupportedUpperByteRange)
    func cannotParseUnsupportedUpperASCIIValue(_ value: UInt8) {
        let parser = NumericParser()
        #expect(!parser.canParse(value))
    }
}
