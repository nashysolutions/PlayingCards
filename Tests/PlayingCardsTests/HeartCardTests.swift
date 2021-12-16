import XCTest
@testable import PlayingCards

final class HeartCardTests: XCTestCase {
    
    func testDescription() {
        XCTAssertEqual(HeartCard(rank: .ace).description, "🂱")
        XCTAssertEqual(HeartCard(rank: .two).description, "🂲")
        XCTAssertEqual(HeartCard(rank: .three).description, "🂳")
        XCTAssertEqual(HeartCard(rank: .four).description, "🂴")
        XCTAssertEqual(HeartCard(rank: .five).description, "🂵")
        XCTAssertEqual(HeartCard(rank: .six).description, "🂶")
        XCTAssertEqual(HeartCard(rank: .seven).description, "🂷")
        XCTAssertEqual(HeartCard(rank: .eight).description, "🂸")
        XCTAssertEqual(HeartCard(rank: .nine).description, "🂹")
        XCTAssertEqual(HeartCard(rank: .ten).description, "🂺")
        XCTAssertEqual(HeartCard(rank: .jack).description, "🂻")
        XCTAssertEqual(HeartCard(rank: .queen).description, "🂽")
        XCTAssertEqual(HeartCard(rank: .king).description, "🂾")
    }
    
    func testIsHiddenDescription() {
        let card = HeartCard(rank: .four)
        card.isHidden = true
        XCTAssertEqual(card.description, "🂠")
    }
}
