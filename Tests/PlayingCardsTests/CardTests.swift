import XCTest
@testable import PlayingCards

final class CardTests: XCTestCase {
    
    private struct FrozenCard: Card {
        
        let rank: Rank
        let suit: Suit
        
        init(rank: Rank, suit: Suit) {
            self.rank = rank
            self.suit = suit
        }
    }
    
    func testComparableLHSLower() {
        let lhs = FrozenCard(rank: .three, suit: .spades)
        let rhs = FrozenCard(rank: .four, suit: .spades)
        XCTAssertTrue(lhs < rhs)
    }
    
    func testComparableLHSSame() {
        let lhs = FrozenCard(rank: .three, suit: .spades)
        let rhs = FrozenCard(rank: .three, suit: .spades)
        XCTAssertFalse(lhs < rhs)
    }
    
    func testComparableLHSHigher() {
        let lhs = FrozenCard(rank: .king, suit: .spades)
        let rhs = FrozenCard(rank: .three, suit: .spades)
        XCTAssertFalse(lhs < rhs)
    }
    
    func testIdentifier() {
        let card = FrozenCard(rank: .three, suit: .spades)
        XCTAssertEqual(card.hashValue, card.id)
    }
}
