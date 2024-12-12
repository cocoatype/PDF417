import Testing
@testable import PDF417

struct RowCalculatorTests {
    @Test func leftCodes() throws {
        let calculator = RowCalculator()
        let grid = [[Void]](repeating: [Void](repeating: (), count: 2), count: 8)
        let values = try grid.indices.map { row in
            try calculator.leftValue(row: row, maxRow: grid.count - 1, correctionLevel: .level2, maxColumn: grid[row].count - 1)
        }
        #expect(values == [.w002, .w007, .w001, .w032, .w037, .w031, .w062, .w067])
    }

    @Test func rightCodes() throws {
        let calculator = RowCalculator()
        let values = try (0..<8).map { row in
            try calculator.rightValue(row: row, maxRow: 7, correctionLevel: .level2, maxColumn: 1)
        }
        #expect(values == [.w001, .w002, .w007, .w031, .w032, .w037, .w061, .w062])
    }
}
