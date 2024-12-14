struct SymbolToCharacterConverter {
    private let alphaConverter = SymbolToCharacterConverterModeAlpha()
    private let lowerConverter = SymbolToCharacterConverterModeLower()
    private let mixedConverter = SymbolToCharacterConverterModeMixed()
    private let punctuationConverter = SymbolToCharacterConverterModePunctuation()

    func value(for symbol: TextSymbol, in mode: TextMode) -> SymbolValue {
        switch mode {
        case .alpha:
            alphaConverter.character(for: symbol)
        case .lower:
            lowerConverter.character(for: symbol)
        case .mixed:
            mixedConverter.character(for: symbol)
        case .punctuation:
            punctuationConverter.character(for: symbol)
        }
    }
}

enum SymbolToCharacterConversionError: Error {
    case invalidCharacter
}
