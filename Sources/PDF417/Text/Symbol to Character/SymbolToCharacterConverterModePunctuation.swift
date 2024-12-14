struct SymbolToCharacterConverterModePunctuation {
    func character(for symbol: TextSymbol) -> SymbolValue {
        switch symbol {
        case .s00: ";"
        case .s01: "<"
        case .s02: ">"
        case .s03: "@"
        case .s04: "["
        case .s05: "\\"
        case .s06: "]"
        case .s07: "_"
        case .s08: "`"
        case .s09: "~"
        case .s10: "!"
        case .s11: "\r"
        case .s12: "\t"
        case .s13: ","
        case .s14: ":"
        case .s15: "\n"
        case .s16: "-"
        case .s17: "."
        case .s18: "$"
        case .s19: "/"
        case .s20: "\""
        case .s21: "|"
        case .s22: "*"
        case .s23: "("
        case .s24: ")"
        case .s25: "?"
        case .s26: "{"
        case .s27: "}"
        case .s28: "'"
        case .s29: .alphaLatch
        }
    }
}
