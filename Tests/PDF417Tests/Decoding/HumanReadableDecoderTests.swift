import Foundation
import Testing

@testable import PDF417

struct HumanReadableDecoderTests {
    @Test func numbersOnly() throws {
        let decoder = HumanReadableDecoder()
        let codewords = [Codeword.w008, .w902, .w017, .w129, .w672, .w001, .w224, .w745]
        let actualData = try decoder.string(for: codewords)

        #expect(actualData == "0123456789012345")
    }

    @Test func textOnly() throws {
        let decoder = HumanReadableDecoder()
        let codewords = [Codeword.w006, .w087, .w422, .w420, .w594, .w454]
        let actualData = try decoder.string(for: codewords)

        #expect(actualData == "Cocoatype")
    }

    @Test func unprintableBytesOnly() throws {
        let decoder = HumanReadableDecoder()
        let codewords = [Codeword.w009, .w901, .w001, .w620, .w089, .w074, .w846, .w007, .w008]
        let actualData = try decoder.string(for: codewords)

        #expect(actualData == "")
    }

    @Test func printableBytesOnly() throws {
        let decoder = HumanReadableDecoder()
        let codewords = [Codeword.w006, .byteLatch, .w097, .w098, .w099, .w100]
        let actualData = try decoder.string(for: codewords)

        #expect(actualData == "abcd")
    }
}
