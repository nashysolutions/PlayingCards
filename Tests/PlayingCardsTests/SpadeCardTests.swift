import XCTest
@testable import PlayingCards

final class SpadeCardTests: XCTestCase {
    
    func testDescription() {
        XCTAssertEqual(SpadeCard(rank: .ace).description, "🂡")
        XCTAssertEqual(SpadeCard(rank: .two).description, "🂢")
        XCTAssertEqual(SpadeCard(rank: .three).description, "🂣")
        XCTAssertEqual(SpadeCard(rank: .four).description, "🂤")
        XCTAssertEqual(SpadeCard(rank: .five).description, "🂥")
        XCTAssertEqual(SpadeCard(rank: .six).description, "🂦")
        XCTAssertEqual(SpadeCard(rank: .seven).description, "🂧")
        XCTAssertEqual(SpadeCard(rank: .eight).description, "🂨")
        XCTAssertEqual(SpadeCard(rank: .nine).description, "🂩")
        XCTAssertEqual(SpadeCard(rank: .ten).description, "🂪")
        XCTAssertEqual(SpadeCard(rank: .jack).description, "🂫")
        XCTAssertEqual(SpadeCard(rank: .queen).description, "🂭")
        XCTAssertEqual(SpadeCard(rank: .king).description, "🂮")
    }
}
