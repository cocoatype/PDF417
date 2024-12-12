public struct CodewordToBarSpaceConverter {
    public init() {}

    public func value(for codeword: Codeword, in cluster: Cluster) -> Int {
        let underlyingConverter: any UnderlyingConverter = switch cluster {
        case .c0: cluster0Converter
        case .c3: cluster3Converter
        case .c6: cluster6Converter
        }

        return underlyingConverter.value(for: codeword)
    }

    private let cluster0Converter = CodewordToBarSpaceConverterCluster0()
    private let cluster3Converter = CodewordToBarSpaceConverterCluster3()
    private let cluster6Converter = CodewordToBarSpaceConverterCluster6()

    protocol UnderlyingConverter {
        func value(for codeword: Codeword) -> Int
    }
}
