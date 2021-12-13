import XCTest
@testable import PlayingCards

final class DiamondCardTests: XCTestCase {
    
    func testDescription() {
        XCTAssertEqual(DiamondCard(rank: .ace).description, "🃁")
        XCTAssertEqual(DiamondCard(rank: .two).description, "🃂")
        XCTAssertEqual(DiamondCard(rank: .three).description, "🃃")
        XCTAssertEqual(DiamondCard(rank: .four).description, "🃄")
        XCTAssertEqual(DiamondCard(rank: .five).description, "🃅")
        XCTAssertEqual(DiamondCard(rank: .six).description, "🃆")
        XCTAssertEqual(DiamondCard(rank: .seven).description, "🃇")
        XCTAssertEqual(DiamondCard(rank: .eight).description, "🃈")
        XCTAssertEqual(DiamondCard(rank: .nine).description, "🃉")
        XCTAssertEqual(DiamondCard(rank: .ten).description, "🃊")
        XCTAssertEqual(DiamondCard(rank: .jack).description, "🃋")
        XCTAssertEqual(DiamondCard(rank: .queen).description, "🃍")
        XCTAssertEqual(DiamondCard(rank: .king).description, "🃎")
    }
}
