import Foundation

public protocol Card: Hashable, Identifiable, Comparable {
    var rank: Rank { get }
    var suit: Suit { get }
}

public extension Card {
    
    var id: Int {
        hashValue
    }
    
    static func <(lhs: Self, rhs: Self) -> Bool {
        lhs.rank < rhs.rank
    }
}
