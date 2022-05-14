import XCTest
@testable import PlayingCards

final class CardTests: XCTestCase {
    
    private struct FrozenCard: Card {
        
        let isHidden: Bool = false
        let description: String = ""
        
        let rank: Rank
        let suit: Suit
        
        init(rank: Rank, suit: Suit) {
            self.rank = rank
            self.suit = suit
        }
    }
    
    func testIdentifier() {
        let card = FrozenCard(rank: .three, suit: .spades)
        XCTAssertEqual(card.hashValue, card.id)
    }
}
