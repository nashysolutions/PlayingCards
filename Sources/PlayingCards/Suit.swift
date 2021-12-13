import Foundation

public enum Suit: String, CaseIterable {
    case spades, hearts, diamonds, clubs
}

extension Suit: CustomStringConvertible {
    public var description: String {
        rawValue
    }
}
