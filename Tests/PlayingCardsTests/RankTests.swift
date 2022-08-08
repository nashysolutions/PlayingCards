import XCTest
@testable import PlayingCards

final class RankTests: XCTestCase {
        
    func testRawRepresentableAssignment() {
        for rank in Rank.allCases {
            let rawValue = rank.rawValue
            switch rank {
            case .ace: XCTAssertEqual(rawValue, "ace")
            case .two: XCTAssertEqual(rawValue, "two")
            case .three: XCTAssertEqual(rawValue, "three")
            case .four: XCTAssertEqual(rawValue, "four")
            case .five: XCTAssertEqual(rawValue, "five")
            case .six: XCTAssertEqual(rawValue, "six")
            case .seven: XCTAssertEqual(rawValue, "seven")
            case .eight: XCTAssertEqual(rawValue, "eight")
            case .nine: XCTAssertEqual(rawValue, "nine")
            case .ten: XCTAssertEqual(rawValue, "ten")
            case .jack: XCTAssertEqual(rawValue, "jack")
            case .queen: XCTAssertEqual(rawValue, "queen")
            case .king: XCTAssertEqual(rawValue, "king")
            }
        }
    }
    
    func testCaseIterableOrder() {
        let collection: [Rank] = [.ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king]
        XCTAssertEqual(collection, Rank.allCases)
    }
}
