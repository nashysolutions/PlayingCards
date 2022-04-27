import Foundation

public enum Rank: CaseIterable {
    case ace
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}

extension Rank: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ace: return "ace"
        case .two: return "two"
        case .three: return "three"
        case .four: return "four"
        case .five: return "five"
        case .six: return "six"
        case .seven: return "seven"
        case .eight: return "eight"
        case .nine: return "nine"
        case .ten: return "ten"
        case .jack: return "jack"
        case .queen: return "queen"
        case .king: return "king"
        }
    }
}
