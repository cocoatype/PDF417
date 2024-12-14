struct IntToTextSymbolConverter {
    func symbol(for intValue: Int) -> TextSymbol {
        switch intValue {
        case 0: .s00
        case 1: .s01
        case 2: .s02
        case 3: .s03
        case 4: .s04
        case 5: .s05
        case 6: .s06
        case 7: .s07
        case 8: .s08
        case 9: .s09
        case 10: .s10
        case 11: .s11
        case 12: .s12
        case 13: .s13
        case 14: .s14
        case 15: .s15
        case 16: .s16
        case 17: .s17
        case 18: .s18
        case 19: .s19
        case 20: .s20
        case 21: .s21
        case 22: .s22
        case 23: .s23
        case 24: .s24
        case 25: .s25
        case 26: .s26
        case 27: .s27
        case 28: .s28
        case 29: .s29
        default: .s29 // this should be impossible
        }
    }
}
