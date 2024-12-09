import Testing
@testable import PDF417

struct RowCalculatorTests {
    @Test func leftCodes() {
        let calculator = RowCalculator()
        let values = (0..<8).map { row in
            calculator.leftValue(row: row, maxRow: 7, correctionLevel: 2, maxColumn: 1)
        }
        #expect(values == [2, 7, 1, 32, 37, 31, 62, 67])
    }

    @Test func rightCodes() {
        let calculator = RowCalculator()
        let values = (0..<8).map { row in
            calculator.rightValue(row: row, maxRow: 7, correctionLevel: 2, maxColumn: 1)
        }
        #expect(values == [1, 2, 7, 31, 32, 37, 61, 62])
    }
}
