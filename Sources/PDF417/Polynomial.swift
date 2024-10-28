import BigInt

/// Represents a polynomial as a collection of terms
public struct Polynomial {
    public let terms: [PolynomialTerm]

    public init(_ terms: [PolynomialTerm]) {
        // Combine like terms and sort by exponent in descending order
        var combinedTerms: [Int: BigInt] = [:]

        for term in terms {
            combinedTerms[term.exponent, default: 0] += term.coefficient
        }

        self.terms = combinedTerms
            .filter { $0.value != 0 }  // Remove terms with zero coefficients
            .map { PolynomialTerm(coefficient: $0.value, exponent: $0.key) }
            .sorted { $0.exponent > $1.exponent }
    }

    var degree: Int { terms.first?.exponent ?? 0 }
    var leadingCoefficient: BigInt { return terms.first?.coefficient ?? 0 }

    static func * (lhs: Polynomial, rhs: Polynomial) -> Polynomial {
        var resultTerms: [PolynomialTerm] = []

        for leftTerm in lhs.terms {
            for rightTerm in rhs.terms {
                resultTerms.append(leftTerm * rightTerm)
            }
        }

        return Polynomial(resultTerms)
    }

    static func - (lhs: Polynomial, rhs: Polynomial) -> Polynomial {
        let negatedTerms = rhs.terms.map { PolynomialTerm(coefficient: -$0.coefficient, exponent: $0.exponent) }
        return Polynomial(lhs.terms + negatedTerms)
    }

    static func * (polynomial: Polynomial, term: PolynomialTerm) -> Polynomial {
        let newTerms = polynomial.terms.map {
            PolynomialTerm(coefficient: $0.coefficient * term.coefficient,
                           exponent: $0.exponent + term.exponent)
        }
        return Polynomial(newTerms)
    }

    /// Result of polynomial division
    public struct DivisionResult {
        public let quotient: Polynomial
        public let remainder: Polynomial

        public var description: String {
            return "Quotient: \(quotient.description)\nRemainder: \(remainder.description)"
        }
    }

    /// Divide this polynomial by another polynomial
    public func divided(by divisor: Polynomial) throws -> DivisionResult {
        guard divisor.terms.isEmpty == false else { throw PolynomialError.divisionByZero }

        var quotientTerms: [PolynomialTerm] = []
        var remainderPoly = self

        // Continue as long as the remainder's degree is >= divisor's degree
        while !remainderPoly.terms.isEmpty && remainderPoly.degree >= divisor.degree {
            // Calculate the term needed to eliminate the highest degree term
            let quotientTerm = PolynomialTerm(
                coefficient: remainderPoly.leadingCoefficient / divisor.leadingCoefficient,
                exponent: remainderPoly.degree - divisor.degree
            )

            quotientTerms.append(quotientTerm)

            // Subtract (divisor × quotientTerm) from remainder
            let subtrahend = (divisor * quotientTerm).galoised
            remainderPoly = (remainderPoly - subtrahend).galoised
            print(remainderPoly.description)
        }

        return DivisionResult(
            quotient: Polynomial(quotientTerms),
            remainder: remainderPoly
        )
    }

    /// Get all coefficients in descending order of powers
    public var coefficients: [BigInt] {
        guard terms.isEmpty == false else { return [0] }

        let maxPower = terms[0].exponent
        var result: [BigInt] = Array(repeating: 0, count: maxPower + 1)

        for term in terms {
            result[term.exponent] = term.coefficient
        }

        // Return in descending order of powers
        return result.reversed()
    }

    /// String representation of the polynomial
    public var description: String {
        if terms.isEmpty {
            return "0"
        }

        return terms.map { term in
            let coefficientStr = term.coefficient == 1 && term.exponent > 0 ? "" :
                                term.coefficient == -1 && term.exponent > 0 ? "-" :
                                String(term.coefficient)

            let xStr = term.exponent == 0 ? "" :
                      term.exponent == 1 ? "x" :
                      "x^\(term.exponent)"

            return "\(coefficientStr)\(xStr)"
        }.joined(separator: " + ")
    }

    public var galoised: Polynomial {
        Polynomial(terms.map(\.galoised))
    }
}

/// Error types for polynomial operations
enum PolynomialError: Error {
    case divisionByZero
}
