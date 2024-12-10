struct CharacterToSymbolConverterModeAlpha {
    func symbol(for character: Character) -> TextSymbol? {
        switch character {
        case "A": .s00
        case "B": .s01
        case "C": .s02
        case "D": .s03
        case "E": .s04
        case "F": .s05
        case "G": .s06
        case "H": .s07
        case "I": .s08
        case "J": .s09
        case "K": .s10
        case "L": .s11
        case "M": .s12
        case "N": .s13
        case "O": .s14
        case "P": .s15
        case "Q": .s16
        case "R": .s17
        case "S": .s18
        case "T": .s19
        case "U": .s20
        case "V": .s21
        case "W": .s22
        case "X": .s23
        case "Y": .s24
        case "Z": .s25
        case " ": .s26
        default: nil
        }
    }
}
