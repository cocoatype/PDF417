struct CharacterToSymbolConverterModeMixed {
    func symbol(for character: Character) -> TextSymbol? {
        switch character {
        case "0": .s00
        case "1": .s01
        case "2": .s02
        case "3": .s03
        case "4": .s04
        case "5": .s05
        case "6": .s06
        case "7": .s07
        case "8": .s08
        case "9": .s09
        case "&": .s10
        case "\r": .s11
        case "\t": .s12
        case ",": .s13
        case ":": .s14
        case "#": .s15
        case "-": .s16
        case ".": .s17
        case "$": .s18
        case "/": .s19
        case "+": .s20
        case "%": .s21
        case "*": .s22
        case "=": .s23
        case "^": .s24
        case " ": .s26
        default: nil
        }
    }
}
