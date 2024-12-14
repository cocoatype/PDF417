struct SymbolToCharacterConverterModeMixed {
    func character(for symbol: TextSymbol) -> SymbolValue {
        switch symbol {
        case .s00: "0"
        case .s01: "1"
        case .s02: "2"
        case .s03: "3"
        case .s04: "4"
        case .s05: "5"
        case .s06: "6"
        case .s07: "7"
        case .s08: "8"
        case .s09: "9"
        case .s10: "&"
        case .s11: "\r"
        case .s12: "\t"
        case .s13: ","
        case .s14: ":"
        case .s15: "#"
        case .s16: "-"
        case .s17: "."
        case .s18: "$"
        case .s19: "/"
        case .s20: "+"
        case .s21: "%"
        case .s22: "*"
        case .s23: "="
        case .s24: "^"
        case .s25: .punctuationLatch
        case .s26: " "
        case .s27: .lowerLatch
        case .s28: .alphaLatch
        case .s29: .punctuationShift
        }
    }
}
