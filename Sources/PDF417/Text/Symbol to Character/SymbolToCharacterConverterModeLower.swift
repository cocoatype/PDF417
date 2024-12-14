struct SymbolToCharacterConverterModeLower {
    func character(for symbol: TextSymbol) -> SymbolValue {
        switch symbol {
        case .s00: "a"
        case .s01: "b"
        case .s02: "c"
        case .s03: "d"
        case .s04: "e"
        case .s05: "f"
        case .s06: "g"
        case .s07: "h"
        case .s08: "i"
        case .s09: "j"
        case .s10: "k"
        case .s11: "l"
        case .s12: "m"
        case .s13: "n"
        case .s14: "o"
        case .s15: "p"
        case .s16: "q"
        case .s17: "r"
        case .s18: "s"
        case .s19: "t"
        case .s20: "u"
        case .s21: "v"
        case .s22: "w"
        case .s23: "x"
        case .s24: "y"
        case .s25: "z"
        case .s26: " "
        case .s27: .alphaShift
        case .s28: .mixedLatch
        case .s29: .punctuationShift
        }
    }
}
