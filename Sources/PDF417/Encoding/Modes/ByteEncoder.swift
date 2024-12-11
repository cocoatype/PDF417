import BigInt
import Foundation

struct ByteEncoder {
    func payload(for data: Data) throws -> [Codeword] {
        let strider = stride(from: 0, to: data.count, by: 6)
        let byteSegments = strider.map { startOffset in
            let startIndex = data.index(data.startIndex, offsetBy: startOffset)
            let endOffset = Swift.min(startOffset + 6, data.count)
            let endIndex = data.index(data.startIndex, offsetBy: endOffset)
            return Data(data[startIndex..<endIndex])
        }.map {
            if $0.count == 6 {
                return payloadFor6ByteSegment($0)
            } else {
                return payloadForSmallSegment($0)
            }
        }

        return try byteSegments
            .flatMap { $0 }
            .map(codewordConverter.codeword(for:))
    }

    private func payloadFor6ByteSegment(_ segment: Data) -> [Int] {
        var value = BigUInt(0)
        value += BigUInt(segment[0]) * BigUInt(256).power(5)
        value += BigUInt(segment[1]) * BigUInt(256).power(4)
        value += BigUInt(segment[2]) * BigUInt(256).power(3)
        value += BigUInt(segment[3]) * BigUInt(256).power(2)
        value += BigUInt(segment[4]) * BigUInt(256).power(1)
        value += BigUInt(segment[5]) * BigUInt(256).power(0)
        return value.mantissasAreEvil
    }

    private func payloadForSmallSegment(_ segment: Data) -> [Int] {
        return segment.map { Int($0) }
    }

    private let codewordConverter = IntToCodewordConverter()
}
