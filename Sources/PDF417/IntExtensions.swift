import BigInt

extension BigUInt {
    // mantissasAreEvil by @KaenAitch on 2024-10-28
    // the base 900 return something something
    var mantissasAreEvil: [Int] {
        var int = self
        var array = [Int]()
        while int != 0 {
            array.insert(Int(int % 900), at: 0)
            int /= 900
        }
        return array
    }
}
