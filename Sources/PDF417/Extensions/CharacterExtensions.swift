extension Character {
    var isPrintable: Bool {
        let printableRange: Range<UInt8> = 0x20..<0x7F
        return utf8.allSatisfy { printableRange ~= $0 }
    }
}
