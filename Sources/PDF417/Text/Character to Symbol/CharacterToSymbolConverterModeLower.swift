struct CharacterToSymbolConverterModeLower {
    func symbol(for character: Character) -> TextSymbol? {
        switch character {
        case "a": .s00
        case "b": .s01
        case "c": .s02
        case "d": .s03
        case "e": .s04
        case "f": .s05
        case "g": .s06
        case "h": .s07
        case "i": .s08
        case "j": .s09
        case "k": .s10
        case "l": .s11
        case "m": .s12
        case "n": .s13
        case "o": .s14
        case "p": .s15
        case "q": .s16
        case "r": .s17
        case "s": .s18
        case "t": .s19
        case "u": .s20
        case "v": .s21
        case "w": .s22
        case "x": .s23
        case "y": .s24
        case "z": .s25
        case " ": .s26
        default: nil
        }
    }
}
