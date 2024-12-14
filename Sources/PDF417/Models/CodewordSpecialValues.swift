extension Codeword {
    static let numericLatch = Codeword.w902
    static let textLatch = Codeword.w900
    static let byteShift = Codeword.w913
    static let byteLatch = Codeword.w901
    static let byteLatchMod6 = Codeword.w924
    static let modeChangers = [Codeword.numericLatch, .textLatch, .byteShift, .byteLatch, .byteLatchMod6]
}
