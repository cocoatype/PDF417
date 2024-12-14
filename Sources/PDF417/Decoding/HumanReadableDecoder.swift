import BigInt
import Foundation

public struct HumanReadableDecoder {
    public init() {}

    public func string(for codewords: [Codeword]) throws -> String {
        try tagger.sequences(in: codewords)
            .map(decode(_:))
            .joined()
    }

    private func decode(_ sequence: DecodingTagger.Sequence) throws -> String {
        let decoder: any ModeDecoder = switch sequence.mode {
        case .text: textDecoder
        case .byte: byteDecoder
        case .numeric: numericDecoder
        }

        return try decoder.string(from: sequence)
    }

    private let tagger = DecodingTagger()
    private let codewordConverter = IntToCodewordConverter()
    private let numericDecoder = NumericDecoder()
    private let textDecoder = TextDecoder()
    private let byteDecoder = ByteDecoder()
    private let correctionCalculator = CorrectionCalculator()
}

protocol ModeDecoder {
    func string(from sequence: DecodingTagger.Sequence) throws -> String
}

enum HumanReadableDecodeError: Error {
    case unrepresentableInASCII
}
