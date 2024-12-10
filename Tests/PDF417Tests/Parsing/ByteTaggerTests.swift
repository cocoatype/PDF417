import Foundation
import Testing

@testable import PDF417

struct ByteTaggerTests {
    @Test func testNumberOnlySequence() throws {
        let tagger = ByteTagger()
        let string = "0123456789012345"
        let data = string.data(using: .ascii)!

        let taggedBytes = tagger.findSequences(in: data)
        #expect(taggedBytes.allSatisfy({ byte in
            if case .numeric = byte.mode {
                return true
            } else {
                return false
            }
        }))
    }

    @Test func testShortNumberOnlySequence() throws {
        let tagger = ByteTagger()
        let string = "0123456789"
        let data = string.data(using: .ascii)!

        let taggedBytes = tagger.findSequences(in: data)
        #expect(taggedBytes.allSatisfy({ byte in
            if case .text = byte.mode {
                return true
            } else {
                return false
            }
        }))
    }

    @Test func testTextOnlySequence() throws {
        let tagger = ByteTagger()
        let string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        let data = string.data(using: .ascii)!

        let taggedBytes = tagger.findSequences(in: data)
        #expect(taggedBytes.allSatisfy({ byte in
            if case .text = byte.mode {
                return true
            } else {
                return false
            }
        }))
    }

    @Test func testShortTextOnlySequence() throws {
        let tagger = ByteTagger()
        let string = "ABCD"
        let data = string.data(using: .ascii)!

        let taggedBytes = tagger.findSequences(in: data)
        #expect(taggedBytes.allSatisfy({ byte in
            if case .byte = byte.mode {
                return true
            } else {
                return false
            }
        }))
    }

    @Test func testMixedSequence() throws {
        let tagger = ByteTagger()
        let string = "ABCDE0123456789012345abcd"
        let data = string.data(using: .ascii)!

        let taggedBytes = tagger.findSequences(in: data)

        let textBytes = taggedBytes[0..<5]
        let numericBytes = taggedBytes[5..<21]
        let byteBytes = taggedBytes[21..<25]
        #expect(textBytes.allSatisfy({ byte in
            if case .text = byte.mode {
                return true
            } else {
                return false
            }
        }))

        #expect(numericBytes.allSatisfy({ byte in
            if case .numeric = byte.mode {
                return true
            } else {
                return false
            }
        }))

        #expect(byteBytes.allSatisfy({ byte in
            if case .byte = byte.mode {
                return true
            } else {
                return false
            }
        }))
    }
}
