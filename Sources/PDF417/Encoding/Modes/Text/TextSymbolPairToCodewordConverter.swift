struct TextSymbolPairToCodewordConverter {
    private let intConverter = IntToCodewordConverter()
    func codeword(for pair: (TextSymbol, TextSymbol)) throws -> Codeword {
        let first = intValue(for: pair.0)
        let second = intValue(for: pair.1)
        let total = (first * 30) + second
        return try intConverter.codeword(for: total)
    }

    private func intValue(for symbol: TextSymbol) -> Int {
        switch symbol {
        case .s00: 0
        case .s01: 1
        case .s02: 2
        case .s03: 3
        case .s04: 4
        case .s05: 5
        case .s06: 6
        case .s07: 7
        case .s08: 8
        case .s09: 9
        case .s10: 10
        case .s11: 11
        case .s12: 12
        case .s13: 13
        case .s14: 14
        case .s15: 15
        case .s16: 16
        case .s17: 17
        case .s18: 18
        case .s19: 19
        case .s20: 20
        case .s21: 21
        case .s22: 22
        case .s23: 23
        case .s24: 24
        case .s25: 25
        case .s26: 26
        case .s27: 27
        case .s28: 28
        case .s29: 29
        }
    }
}
