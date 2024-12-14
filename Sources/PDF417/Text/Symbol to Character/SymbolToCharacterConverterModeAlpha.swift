struct SymbolToCharacterConverterModeAlpha {
    func character(for symbol: TextSymbol) -> SymbolValue {
        switch symbol {
        case .s00: "A"
        case .s01: "B"
        case .s02: "C"
        case .s03: "D"
        case .s04: "E"
        case .s05: "F"
        case .s06: "G"
        case .s07: "H"
        case .s08: "I"
        case .s09: "J"
        case .s10: "K"
        case .s11: "L"
        case .s12: "M"
        case .s13: "N"
        case .s14: "O"
        case .s15: "P"
        case .s16: "Q"
        case .s17: "R"
        case .s18: "S"
        case .s19: "T"
        case .s20: "U"
        case .s21: "V"
        case .s22: "W"
        case .s23: "X"
        case .s24: "Y"
        case .s25: "Z"
        case .s26: " "
        case .s27: .lowerLatch
        case .s28: .mixedLatch
        case .s29: .punctuationShift
        }
    }
}
