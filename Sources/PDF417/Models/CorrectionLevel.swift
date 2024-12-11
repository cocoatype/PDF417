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

    init(dataCount: Int) {
        switch dataCount {
        case 0...40: self = .level2
        case 41...160: self = .level3
        case 161...320: self = .level4
        default: self = .level5
        }
    }

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
