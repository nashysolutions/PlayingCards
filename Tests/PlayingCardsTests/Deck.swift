import XCTest
@testable import PlayingCards

final class DeckTests: XCTestCase {
    
    private var deck: Deck!
    
    override func setUp() {
        deck = Deck()
    }
    
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
        XCTAssertEqual(deck.pullCard(), SpadeCard(rank: .king))
        deck.cards = []
        XCTAssertNil(deck.pullCard())
    }
}
