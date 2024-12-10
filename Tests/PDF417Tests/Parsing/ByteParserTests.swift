import Foundation
import Testing

@testable import PDF417

struct ByteParserTests {
    @Test func mod6Encoding() throws {
        // taken from the PDF417 spec
        let parser = ByteParser()
        let data = Data(0x01...0x06)

        try #expect(parser.payload(for: data) == [Codeword.w001, .w620, .w089, .w074, .w846])
    }

    @Test func otherEncoding() throws {
        // taken from the PDF417 spec
        let parser = ByteParser()
        let data = Data(0x01...0x09)

        try #expect(parser.payload(for: data) == [Codeword.w001, .w620, .w089, .w074, .w846, .w007, .w008, .w009])
    }
}
