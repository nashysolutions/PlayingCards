import XCTest
@testable import PlayingCards

final class RankTests: XCTestCase {
        
    func testCaseIterableOrder() {
        let collection: [Rank] = [.ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king]
        XCTAssertEqual(collection, Rank.allCases)
    }
    
    func testDescription() {
        for rank in Rank.allCases {
            let description = rank.description
            switch rank {
            case .ace: XCTAssertEqual(description, "ace")
            case .two: XCTAssertEqual(description, "two")
            case .three: XCTAssertEqual(description, "three")
            case .four: XCTAssertEqual(description, "four")
            case .five: XCTAssertEqual(description, "five")
            case .six: XCTAssertEqual(description, "six")
            case .seven: XCTAssertEqual(description, "seven")
            case .eight: XCTAssertEqual(description, "eight")
            case .nine: XCTAssertEqual(description, "nine")
            case .ten: XCTAssertEqual(description, "ten")
            case .jack: XCTAssertEqual(description, "jack")
            case .queen: XCTAssertEqual(description, "queen")
            case .king: XCTAssertEqual(description, "king")
            }
        }
    }
}
