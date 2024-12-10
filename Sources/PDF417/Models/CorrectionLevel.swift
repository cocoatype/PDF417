public enum CorrectionLevel {
    case level0
    case level1
    case level2
    case level3
    case level4
    case level5
    case level6
    case level7
    case level8

    var correctionCount: Int {
        switch self {
        case .level0: 2
        case .level1: 4
        case .level2: 8
        case .level3: 16
        case .level4: 32
        case .level5: 64
        case .level6: 128
        case .level7: 256
        case .level8: 512
        }
    }
}
