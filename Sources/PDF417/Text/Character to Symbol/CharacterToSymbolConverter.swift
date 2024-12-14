struct CharacterToSymbolConverter {
    private let alphaConverter = CharacterToSymbolConverterModeAlpha()
    private let lowerConverter = CharacterToSymbolConverterModeLower()
    private let mixedConverter = CharacterToSymbolConverterModeMixed()
    private let punctuationConverter = CharacterToSymbolConverterModePunctuation()

    func modes(for character: Character) -> [TextMode] {
        var modes = [TextMode]()

        if alphaConverter.symbol(for: character) != nil {
            modes.append(.alpha)
        }

        if lowerConverter.symbol(for: character) != nil {
            modes.append(.lower)
        }

        if mixedConverter.symbol(for: character) != nil {
            modes.append(.mixed)
        }
        
        if punctuationConverter.symbol(for: character) != nil {
            modes.append(.punctuation)
        }

        return modes
    }

    func symbol(for character: Character, in mode: TextMode) -> TextSymbol? {
        switch mode {
        case .alpha:
            alphaConverter.symbol(for: character)
        case .lower:
            lowerConverter.symbol(for: character)
        case .mixed:
            mixedConverter.symbol(for: character)
        case .punctuation:
            punctuationConverter.symbol(for: character)
        }
    }
}
