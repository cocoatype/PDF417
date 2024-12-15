import Testing

@testable import PDF417

struct DecodingTaggerTests {
    @Test func taggerHandlesMessagesWithCorrectionCodewords() throws {
        let tagger = DecodingTagger()
        let value = try tagger.sequences(in: [.w008, .w000, .w018, .w001, .w147, .w001, .w236, .w002, .w246, .w000, .w215, .w000, .w090, .w000, .w043, .w001])
        #expect(value.count == 1)
    }
}
