enum TextMode {
    case alpha
    case lower
    case mixed
    case punctuation

    func shift(to mode: TextMode) -> TextSymbol? {
        switch (self, mode) {
        case (.alpha, .punctuation): .s29
        case (.alpha, _): nil
        case (.lower, .alpha): .s27
        case (.lower, .punctuation): .s29
        case (.lower, _): nil
        case (.mixed, .punctuation): .s29
        case (.mixed, _): nil
        case (.punctuation, _): nil
        }
    }

    func latch(to mode: TextMode) -> [TextSymbol] {
        switch (self, mode) {
        case (.alpha, .alpha): []
        case (.alpha, .lower): [.s27]
        case (.alpha, .mixed): [.s28]
        case (.alpha, .punctuation): [.s28, .s25]
        case (.lower, .alpha): [.s28, .s28]
        case (.lower, .lower): []
        case (.lower, .mixed): [.s28]
        case (.lower, .punctuation): [.s28, .s25]
        case (.mixed, .alpha): [.s28]
        case (.mixed, .lower): [.s27]
        case (.mixed, .mixed): []
        case (.mixed, .punctuation): [.s25]
        case (.punctuation, .alpha): [.s29]
        case (.punctuation, .lower): [.s29, .s27]
        case (.punctuation, .mixed): [.s29, .s28]
        case (.punctuation, .punctuation): []
        }
    }
}
