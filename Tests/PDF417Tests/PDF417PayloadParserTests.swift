import Testing
@testable import PDF417

@Test func numbersOnly() throws {
    let parser = PDF417PayloadParser()
    let string = "0123456789012345"
    let actualResult = try parser.payload(for: string)
    let expectedResult = [Codeword.w008, .w902, .w017, .w129, .w672, .w001, .w224, .w745, .w209, .w109, .w714, .w363, .w526, .w810, .w042, .w214]

    #expect(actualResult == expectedResult)
}

import BigInt

@Test func mantissasAreEvilReturnsCorrectValue() {
    let value: BigUInt = 10123456789012345
    let result = value.mantissasAreEvil
    #expect(result == [17, 129, 672, 1, 224, 745])
}
