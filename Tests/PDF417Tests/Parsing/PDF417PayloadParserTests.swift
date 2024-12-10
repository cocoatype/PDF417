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
}
