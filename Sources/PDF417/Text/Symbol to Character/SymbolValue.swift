enum SymbolValue: ExpressibleByStringLiteral {
    case character(Character)
    case alphaShift
    case alphaLatch
    case lowerLatch
    case mixedLatch
    case punctuationShift
    case punctuationLatch

    init(stringLiteral value: String) {
        self = .character(Character(value))
    }
}
