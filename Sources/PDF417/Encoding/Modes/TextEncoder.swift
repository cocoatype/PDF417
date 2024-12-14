import Foundation

struct TextEncoder {
    private static let horizontalTab = UInt8(ascii: "\t")
    private static let lineFeed = UInt8(ascii: "\n")
    private static let carriageReturn = UInt8(ascii: "\r")
    private static let printableCharacters: ClosedRange<UInt8> = 0x20...0x7e
    func canParse(_ byte: UInt8) -> Bool {
        return byte == Self.horizontalTab ||
        byte == Self.lineFeed ||
        byte == Self.carriageReturn ||
        Self.printableCharacters ~= byte
    }

    private let symbolPairConverter = TextSymbolPairToCodewordConverter()
    func payload(for data: Data) throws -> [Codeword] {
        guard let string = String(data: data, encoding: .ascii) else {
            throw TextEncodingError.unrepresentableInASCII
        }

        var symbols = try symbols(for: string)
        if symbols.count % 2 != 0 {
            symbols.append(TextSymbol.padding)
        }

        return try stride(from: 0, to: symbols.count, by: 2)
            .map { (symbols[$0], symbols[$0 + 1]) }
            .map(symbolPairConverter.codeword(for:))
    }

    private let symbolConverter = CharacterToSymbolConverter()
    private func symbols(for string: String) throws -> [TextSymbol] {
        var currentMode = TextMode.alpha
        var cursor = string.startIndex
        var symbols = [TextSymbol]()

        while cursor < string.endIndex {
            // check the run under the current mode
            let consecutiveSymbols = string[cursor...].prefix { character in
                symbolConverter.symbol(for: character, in: currentMode) != nil
            }

            // if > 0, go ahead and do it
            if consecutiveSymbols.count > 0 {
                symbols.append(contentsOf: consecutiveSymbols.compactMap { symbolConverter.symbol(for: $0, in: currentMode) })
                cursor = string.index(cursor, offsetBy: consecutiveSymbols.count)
            } else { // if 0, find out which valid modes exist
                let nextCharacter = string[cursor]
                let validModes = symbolConverter.modes(for: nextCharacter)
                // figure out which mode produces the longest run
                let modeCounts = validModes.reduce(into: [(TextMode, Int)]()) { counts, mode in
                    let count = string[cursor...].prefix { character in
                        symbolConverter.symbol(for: character, in: mode) != nil
                    }.count
                    counts.append((mode, count))
                }

                guard let (maxMode, maxModeCount) = modeCounts.max(by: { $0.1 < $1.1 }) else { throw TextEncodingError.missingMode }

                if maxModeCount == 1,
                   let shiftSymbol = currentMode.shift(to: maxMode),
                   let characterSymbol = symbolConverter.symbol(for: nextCharacter, in: maxMode) {
                    symbols.append(shiftSymbol)
                    symbols.append(characterSymbol)
                    continue
                } else {
                    symbols.append(contentsOf: currentMode.latch(to: maxMode))
                    currentMode = maxMode
                    continue
                }
            }
        }

        return symbols
    }
}

enum TextEncodingError: Error {
    case missingMode
    case unrepresentableInASCII
}
