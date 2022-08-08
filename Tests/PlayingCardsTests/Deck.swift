import XCTest
@testable import PlayingCards

final class DeckTests: XCTestCase {
    
    private var deck = Deck()
    
    func testCount() {
        XCTAssertTrue(deck.cards.count == 52)
    }
        
    func testPullCard() {
        XCTAssertNotNil(deck.pullCard())
        deck.cards.removeAll()
        XCTAssertNil(deck.pullCard())
    }
}
