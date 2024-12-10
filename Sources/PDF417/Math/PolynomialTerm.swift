import BigInt

public struct PolynomialTerm {
    public let coefficient: BigInt
    public let exponent: Int

    public init(coefficient: BigInt, exponent: Int) {
        self.coefficient = coefficient
        self.exponent = exponent
    }

    public static func * (lhs: PolynomialTerm, rhs: PolynomialTerm) -> PolynomialTerm {
        return PolynomialTerm(coefficient: lhs.coefficient * rhs.coefficient,
                   exponent: lhs.exponent + rhs.exponent)
    }

    public var galoised: PolynomialTerm {
        let truncated = coefficient % 929
        let newCoefficient = if truncated > 0 {
            truncated
        } else {
            929 + truncated
        }
        return PolynomialTerm(coefficient: newCoefficient, exponent: exponent)
    }
}
