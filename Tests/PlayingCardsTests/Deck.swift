import XCTest
@testable import PlayingCards

final class DeckTests: XCTestCase {
    
    private var deck = Deck()
    
    func testCount() {
        XCTAssertTrue(deck.cards.count == 52)
    }
    
    func testShuffle() {
        let unshuffled = deck.cards
        deck.shuffle()
        let shuffled = deck.cards
        XCTAssertNotEqual(unshuffled, shuffled)
    }
    
    func testPullCard() {
        XCTAssertEqual(deck.pullCard(), PlayingCard(rank: .king, suit: .spades))
        deck.cards = []
        XCTAssertNil(deck.pullCard())
    }
}
