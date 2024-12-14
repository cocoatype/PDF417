struct TextDecoder: ModeDecoder {
    let codewordConverter = CodewordToTextSymbolPairConverter()
    let symbolConverter = SymbolToCharacterConverter()
    func string(from sequence: DecodingTagger.Sequence) throws -> String {
        var currentTextMode = TextMode.alpha
        var string = String()
        let symbols = try sequence.codewords
            .map(codewordConverter.pair(for:))
            .flatMap { [$0.0, $0.1] }

        var cursor = symbols.startIndex
        while cursor < symbols.endIndex {
            let symbol = symbols[cursor]
            switch symbolConverter.value(for: symbol, in: currentTextMode) {
            case .character(let character):
                string.append(character)
            case .alphaShift:
                if let character = shiftedCharacter(in: symbols, mode: .alpha, at: cursor + 1) {
                    cursor = cursor + 1
                    string.append(character)
                }
            case .alphaLatch:
                currentTextMode = .alpha
            case .lowerLatch:
                currentTextMode = .lower
            case .mixedLatch:
                currentTextMode = .mixed
            case .punctuationShift:
                if let character = shiftedCharacter(in: symbols, mode: .punctuation, at: cursor + 1) {
                    cursor = cursor + 1
                    string.append(character)
                }
            case .punctuationLatch:
                currentTextMode = .punctuation
            }
            cursor = cursor + 1
        }

        return string
    }

    private func shiftedCharacter(in symbols: [TextSymbol], mode: TextMode, at index: [TextSymbol].Index) -> Character? {
        guard index < symbols.endIndex,
              case .character(let character) = symbolConverter.value(for: symbols[index], in: mode)
        else { return nil }

        return character
    }
}
