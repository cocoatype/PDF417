struct CharacterToSymbolConverterModePunctuation {
    func symbol(for character: Character) -> TextSymbol? {
        switch character {
        case ";": .s00
        case "<": .s01
        case ">": .s02
        case "@": .s03
        case "[": .s04
        case "\\": .s05
        case "]": .s06
        case "_": .s07
        case "`": .s08
        case "~": .s09
        case "!": .s10
        case "\r": .s11
        case "\t": .s12
        case ",": .s13
        case ":": .s14
        case "\n": .s15
        case "-": .s16
        case ".": .s17
        case "$": .s18
        case "/": .s19
        case "\"": .s20
        case "|": .s21
        case "*": .s22
        case "(": .s23
        case ")": .s24
        case "?": .s25
        case "{": .s26
        case "}": .s27
        case "'": .s28
        default: nil
        }
    }
}
