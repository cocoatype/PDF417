import BigInt

struct NumericDecoder: ModeDecoder {
    private let codewordConverter = CodewordToIntConverter()
    func string(from sequence: DecodingTagger.Sequence) -> String {
        stride(from: 0, to: sequence.codewords.count, by: 15).map { startOffset in
            let endOffset = Swift.min(startOffset + 15, sequence.codewords.count)
            return Array(sequence.codewords[startOffset..<endOffset])
        }.map { (codewords: [Codeword]) -> BigUInt in
            codewords.convertFromBase(base: 900)
        }.map {
            var string = String($0)
            if string.first == "1" {
                string.removeFirst()
            }
            return string
        }.joined()
    }
}
