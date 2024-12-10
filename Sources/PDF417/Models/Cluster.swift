public enum Cluster {
    case c0, c3, c6

    public init(row: Int) {
        switch row % 3 {
        case 0: self = .c0
        case 1: self = .c3
        case 2: self = .c6
        default: fatalError()
        }
    }
}
