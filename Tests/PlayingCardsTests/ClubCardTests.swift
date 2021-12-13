import XCTest
@testable import PlayingCards

final class ClubCardTests: XCTestCase {
    
    func testDescription() {
        XCTAssertEqual(ClubCard(rank: .ace).description, "🃑")
        XCTAssertEqual(ClubCard(rank: .two).description, "🃒")
        XCTAssertEqual(ClubCard(rank: .three).description, "🃓")
        XCTAssertEqual(ClubCard(rank: .four).description, "🃔")
        XCTAssertEqual(ClubCard(rank: .five).description, "🃕")
        XCTAssertEqual(ClubCard(rank: .six).description, "🃖")
        XCTAssertEqual(ClubCard(rank: .seven).description, "🃗")
        XCTAssertEqual(ClubCard(rank: .eight).description, "🃘")
        XCTAssertEqual(ClubCard(rank: .nine).description, "🃙")
        XCTAssertEqual(ClubCard(rank: .ten).description, "🃚")
        XCTAssertEqual(ClubCard(rank: .jack).description, "🃛")
        XCTAssertEqual(ClubCard(rank: .queen).description, "🃝")
        XCTAssertEqual(ClubCard(rank: .king).description, "🃞")
    }
}
