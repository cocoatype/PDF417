import BigInt
import Foundation

struct CorrectionCalculator {
    func correctionCodewords(for codewords: [Codeword], level: CorrectionLevel) throws -> [Codeword] {
        let codewordValues = codewords
            .map(codewordConverter.value(for:))
            .map(BigInt.init(_:))

        let exponents = (0..<codewords.count).reversed()
        let codeTerms = zip(codewordValues, exponents)
            .map(PolynomialTerm.init)
        let symbolPolynomial = Polynomial(codeTerms)
        let multiedSymbolPolynomial = symbolPolynomial * PolynomialTerm(coefficient: 1, exponent: level.correctionCount)

        let generatorPolys = (1...level.correctionCount).map { index in
            Polynomial([
                PolynomialTerm(coefficient: 1, exponent: 1),
                PolynomialTerm(coefficient: BigInt(pow(Double(3), Double(index)) * -1), exponent: 0),
            ])
        }

        let generatorPolynomial = generatorPolys.reduce(Polynomial([PolynomialTerm(coefficient: 1, exponent: 0)])) { partialResult, polynomial in
            partialResult * polynomial
        }.galoised

        let result = try multiedSymbolPolynomial.divided(by: generatorPolynomial)
        let remainder = result.remainder.galoised
        return try remainder.coefficients.map {
            if $0 > 0 {
                929 - $0
            } else { $0 }
        }
        .map(Int.init(_:))
        .map(intConverter.codeword(for:))
    }

    private let codewordConverter = CodewordToIntConverter()
    private let intConverter = IntToCodewordConverter()
}
