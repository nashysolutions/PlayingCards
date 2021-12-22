import XCTest
@testable import PlayingCards

final class PlayingCardTests: XCTestCase {
    
    func testDescription() {
        let card = PlayingCard(rank: .four, suit: .clubs)
        XCTAssertEqual(card.description, "four of clubs")
    }
    
    func testIsHiddenDescription() {
        let card = PlayingCard(rank: .four, suit: .clubs)
        card.isHidden = true
        XCTAssertEqual(card.description, "🂠")
    }
    
    func testHashable() {
        let card = PlayingCard(rank: .four, suit: .clubs)
        XCTAssertEqual(card.hashValue, card.id)
    }
}
