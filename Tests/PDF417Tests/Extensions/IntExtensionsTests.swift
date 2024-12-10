import BigInt
import Testing

@testable import PDF417

struct IntExtensionsTests {
    @Test func mantissasAreEvilReturnsCorrectValue() {
        let value: BigUInt = 10123456789012345
        let result = value.mantissasAreEvil
        #expect(result == [17, 129, 672, 1, 224, 745])
    }
}
