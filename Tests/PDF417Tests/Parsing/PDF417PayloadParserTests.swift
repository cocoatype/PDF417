import Foundation
import Testing
@testable import PDF417

struct PDF417PayloadParserTests {
    @Test func numbersOnly() throws {
        let parser = PDF417PayloadParser()
        let string = "0123456789012345"
        let actualResult = try parser.payload(for: string)
        let expectedResult = [Codeword.w008, .w902, .w017, .w129, .w672, .w001, .w224, .w745, .w209, .w109, .w714, .w363, .w526, .w810, .w042, .w214]

        #expect(actualResult == expectedResult)
    }

    @Test func textOnly() throws {
        let parser = PDF417PayloadParser()
        let string = "Cocoatype"
        let actualResult = try parser.payload(for: string)
        let expectedResult = [Codeword.w000]

        #expect(actualResult == expectedResult)
    }

    @Test func bytesOnly() throws {
        let parser = PDF417PayloadParser()
        let data = Data(0x01...0x08)
        let actualResult = try parser.payload(for: data)
        let expectedResult = [Codeword.w009, .w901, .w001, .w620, .w089, .w074, .w846, .w007, .w008, .w251, .w226, .w739, .w622, .w047, .w147, .w270, .w455]

        #expect(actualResult == expectedResult)
    }
}
