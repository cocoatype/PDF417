import Testing
@testable import PDF417

struct CorrectionCalculatorTests {
    @Test func correctionCodewords() throws {
        let calculator = CorrectionCalculator()
        let corrections = try calculator.correctionCodewords(for: [.w003, .w002, .w001], level: .level0)

        #expect(corrections == [.w230, .w862])
    }
}
