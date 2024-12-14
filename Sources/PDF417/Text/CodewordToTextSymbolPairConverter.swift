struct CodewordToTextSymbolPairConverter {
    private let codewordConverter = CodewordToIntConverter()
    private let intConverter = IntToTextSymbolConverter()
    func pair(for codeword: Codeword) throws -> (TextSymbol, TextSymbol) {
        let int = codewordConverter.value(for: codeword)
        let first = intConverter.symbol(for: int / 30)
        let second = intConverter.symbol(for: int % 30)

        return (first, second)
    }
}
