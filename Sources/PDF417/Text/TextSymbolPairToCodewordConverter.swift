struct TextSymbolPairToCodewordConverter {
    private let intConverter = IntToCodewordConverter()
    private let textSymbolConverter = TextSymbolToIntConverter()
    func codeword(for pair: (TextSymbol, TextSymbol)) throws -> Codeword {
        let first = textSymbolConverter.intValue(for: pair.0)
        let second = textSymbolConverter.intValue(for: pair.1)
        let total = (first * 30) + second
        return try intConverter.codeword(for: total)
    }
}
