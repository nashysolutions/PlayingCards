import Foundation

public enum Suit: String, CaseIterable {
    case spades, hearts, diamonds, clubs
}

extension Suit: CustomStringConvertible {
    public var description: String {
        rawValue
    }
}

extension Suit {
    public enum SymbolStyle {
        case filled, hallow
    }
}

extension Suit {
    
    /// Provides a description of the symbol.
    /// - Parameter style: The style of the symbol.
    /// - Returns: A unicode representation of the symbol
    public func symbol(style: SymbolStyle = .hallow) -> String {
        switch self {
        case .spades: return spades(style)
        case .hearts: return hearts(style)
        case .diamonds: return diamonds(style)
        case .clubs: return clubs(style)
        }
    }

    private func spades(_ style: SymbolStyle) -> String {
        switch style {
        case .filled: return "♠"
        case .hallow: return "♤"
        }
    }

    private func hearts(_ style: SymbolStyle) -> String {
        switch style {
        case .filled: return "♥"
        case .hallow: return "♡"
        }
    }

    private func diamonds(_ style: SymbolStyle) -> String {
        switch style {
        case .filled: return "♦"
        case .hallow: return "♢"
        }
    }

    private func clubs(_ style: SymbolStyle) -> String {
        switch style {
        case .filled: return "♣"
        case .hallow: return "♧"
        }
    }
}
