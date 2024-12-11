public struct RowCalculator {
    public func leftValue(row: Int, maxRow: Int, correctionLevel: CorrectionLevel, maxColumn: Int) -> Int {
        let rowValue = (30 * (row / 3))
        let additionalValue = switch Cluster(row: row) {
        case .c0: value(maxRow: maxRow)
        case .c3: value(correctionLevel: correctionLevel.value, maxRow: maxRow)
        case .c6: value(maxColumn: maxColumn)
        }

        return rowValue + additionalValue
    }

    public func rightValue(row: Int, maxRow: Int, correctionLevel: CorrectionLevel, maxColumn: Int) -> Int {
        let rowValue = (30 * (row / 3))
        let additionalValue = switch Cluster(row: row) {
        case .c0: value(maxColumn: maxColumn)
        case .c3: value(maxRow: maxRow)
        case .c6: value(correctionLevel: correctionLevel.value, maxRow: maxRow)
        }

        return rowValue + additionalValue
    }

    private func value(maxRow: Int) -> Int { maxRow / 3 }
    private func value(correctionLevel: Int, maxRow: Int) -> Int { (correctionLevel * 3) + (maxRow % 3) }
    private func value(maxColumn: Int) -> Int { maxColumn }
}
