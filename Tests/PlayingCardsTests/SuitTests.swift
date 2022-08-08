import XCTest
@testable import PlayingCards

final class SuitTests: XCTestCase {
    
    func testRawRepresentableAssignment() {
        XCTAssertEqual(Suit.spades.rawValue, "spades")
        XCTAssertEqual(Suit.hearts.rawValue, "hearts")
        XCTAssertEqual(Suit.diamonds.rawValue, "diamonds")
        XCTAssertEqual(Suit.clubs.rawValue, "clubs")
    }
    
    func testCaseIterableOrder() {
        let collection: [Suit] = [.spades, .hearts, .diamonds, .clubs]
        XCTAssertEqual(collection, Suit.allCases)
    }
}
