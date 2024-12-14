import BigInt
import Foundation

struct ByteDecoder: ModeDecoder {
    private let codewordConverter = CodewordToIntConverter()
    func string(from sequence: DecodingTagger.Sequence) -> String {
        stride(from: 0, to: sequence.codewords.count, by: 6).map { startOffset in
            let endOffset = Swift.min(startOffset + 6, sequence.codewords.count)
            return Array(sequence.codewords[startOffset..<endOffset])
        }.map { (codewords: [Codeword]) -> Data in
            if codewords.count == 6 {
                return decode6ByteSegment(codewords)
            } else {
                return decodeSmallSegment(codewords)
            }
        }
        .compactMap { String(data: $0, encoding: .ascii) }
        .joined()
        .filter(\.isPrintable)
    }

    private func decode6ByteSegment(_ codewords: [Codeword]) -> Data {
        let int = codewords.convertFromBase(base: 900)
        let bytes = int.convertToBase(base: 256).map(UInt8.init)
        return Data(bytes)
    }

    private func decodeSmallSegment(_ codewords: [Codeword]) -> Data {
        let bytes = codewords.map { codewordConverter.value(for: $0) }.map(UInt8.init)
        return Data(bytes)
    }
}
