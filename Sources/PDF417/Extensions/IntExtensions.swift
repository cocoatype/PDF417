import BigInt

extension BigUInt {
    // mantissasAreEvil by @KaenAitch on 2024-10-28
    // an array of base-900 values
    var mantissasAreEvil: [Int] {
        convertToBase(base: 900)
    }

    func convertToBase(base: BigUInt) -> [Int] {
        var int = self
        var array = [Int]()
        while int != 0 {
            array.insert(Int(int % base), at: 0)
            int /= base
        }
        return array
    }
}

extension [Codeword] {
    func convertFromBase(base: BigUInt) -> BigUInt {
        let codewordConverter = CodewordToIntConverter()
        var int = BigUInt(0)
        let powers = (0..<count).reversed()
        let multiplications = zip(self, powers)
        for (codeword, power) in multiplications {
            let value = codewordConverter.value(for: codeword)
            int += BigUInt(value) * BigUInt(base).power(power)
        }

        return int
    }
}
