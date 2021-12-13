import XCTest
@testable import PlayingCards

final class PlayingCardTests: XCTestCase {
    
    func testDescription() {
        let card = PlayingCard(rank: .four, suit: .clubs)
        XCTAssertEqual(card.description, "four of clubs")
    }
}
