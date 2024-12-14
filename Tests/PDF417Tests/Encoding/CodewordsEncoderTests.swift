import Foundation
import Testing
@testable import PDF417

struct CodewordsEncoderTests {
    @Test func numbersOnly() throws {
        let encoder = CodewordsEncoder()
        let string = "0123456789012345"
        let actualData = try encoder.dataCodewords(for: string)
        let expectedData = [Codeword.w008, .w902, .w017, .w129, .w672, .w001, .w224, .w745]
        let actualCorrections = try encoder.correctionCodewords(for: actualData, correctionLevel: CorrectionLevel(dataCount: actualData.count))
        let expectedCorrections = [Codeword.w209, .w109, .w714, .w363, .w526, .w810, .w042, .w214]

        #expect(actualData == expectedData)
        #expect(actualCorrections == expectedCorrections)
    }

    @Test func textOnly() throws {
        let encoder = CodewordsEncoder()
        let string = "Cocoatype"
        let actualData = try encoder.dataCodewords(for: string)
        let expectedData = [Codeword.w006, .w087, .w422, .w420, .w594, .w454]
        let actualCorrections = try encoder.correctionCodewords(for: actualData, correctionLevel: CorrectionLevel(dataCount: actualData.count))
        let expectedCorrections = [Codeword.w142, .w096, .w125, .w402, .w123, .w157, .w106, .w232]

        #expect(actualData == expectedData)
        #expect(actualCorrections == expectedCorrections)
    }

    @Test func bytesOnly() throws {
        let encoder = CodewordsEncoder()
        let data = Data(0x01...0x08)
        let actualData = try encoder.dataCodewords(for: data)
        let expectedData = [Codeword.w009, .w901, .w001, .w620, .w089, .w074, .w846, .w007, .w008]
        let actualCorrections = try encoder.correctionCodewords(for: actualData, correctionLevel: CorrectionLevel(dataCount: actualData.count))
        let expectedCorrections = [Codeword.w251, .w226, .w739, .w622, .w047, .w147, .w270, .w455]

        #expect(actualData == expectedData)
        #expect(actualCorrections == expectedCorrections)
    }
}
