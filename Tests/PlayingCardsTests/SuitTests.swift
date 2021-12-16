import XCTest
@testable import PlayingCards

final class SuitTests: XCTestCase {
    
    func testRawRepresentableAssignment() {
        XCTAssertEqual(Suit.spades.rawValue, "spades")
        XCTAssertEqual(Suit.hearts.rawValue, "hearts")
        XCTAssertEqual(Suit.diamonds.rawValue, "diamonds")
        XCTAssertEqual(Suit.clubs.rawValue, "clubs")
    }
    
    func testCaseIterableOrder() {
        let collection: [Suit] = [.spades, .hearts, .diamonds, .clubs]
        XCTAssertEqual(collection, Suit.allCases)
    }
    
    func testDescription() {
        for suit in Suit.allCases {
            XCTAssertEqual(suit.description, suit.rawValue)
        }
    }
    
    func testHallowSymbol() {
        let style = Suit.SymbolStyle.hallow
        for suit in Suit.allCases {
            XCTAssertEqual(suit.symbol(style: style), symbol(suit, style))
        }
    }
    
    func testFilledSymbol() {
        let style = Suit.SymbolStyle.filled
        for suit in Suit.allCases {
            XCTAssertEqual(suit.symbol(style: style), symbol(suit, style))
        }
    }
    
    private func symbol(_ suit: Suit, _ style: Suit.SymbolStyle = .hallow) -> String {
        switch suit {
        case .spades:
            return spadesDescription(style)
        case .hearts:
            return heartsDescription(style)
        case .diamonds:
            return diamondsDescription(style)
        case .clubs:
            return clubsDescription(style)
        }
    }

    private func spadesDescription(_ style: Suit.SymbolStyle) -> String {
        switch style {
        case .filled: return "♠"
        case .hallow: return "♤"
        }
    }

    private func heartsDescription(_ style: Suit.SymbolStyle) -> String {
        switch style {
        case .filled: return "♥"
        case .hallow: return "♡"
        }
    }

    private func diamondsDescription(_ style: Suit.SymbolStyle) -> String {
        switch style {
        case .filled: return "♦"
        case .hallow: return "♢"
        }
    }

    private func clubsDescription(_ style: Suit.SymbolStyle) -> String {
        switch style {
        case .filled: return "♣"
        case .hallow: return "♧"
        }
    }
}
