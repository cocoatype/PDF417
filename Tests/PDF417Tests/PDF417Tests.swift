import BigInt
import Foundation
import Testing
@testable import PDF417

@Test func example() async throws {
    let k = 2
    let codeWords: [BigInt] = [3, 2, 1]
    let exponents = (0..<codeWords.count).reversed()
    let codeTerms = zip(codeWords, exponents).map(PolynomialTerm.init)
    let symbolPolynomial = Polynomial(codeTerms)
    let multiedSymbolPolynomial = symbolPolynomial * PolynomialTerm(coefficient: 1, exponent: k)

    let generatorPolys = (1...k).map { index in
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
    let corrections = remainder.coefficients.map {
        if $0 > 0 {
            929 - $0
        } else { $0 }
    }

    print(corrections)
    #expect(corrections == [230, 862])
}
