enum CompactionMode {
    case text, byte, numeric

    var isNumber: Bool {
        switch self {
        case .numeric: return true
        case .text, .byte: return false
        }
    }

    var isText: Bool {
        switch self {
        case .text: return true
        case .numeric, .byte: return false
        }
    }

    var isByte: Bool {
        switch self {
        case .byte: return true
        case .numeric, .text: return false
        }
    }
}
