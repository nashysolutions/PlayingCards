import Foundation

public protocol Card: Hashable, Identifiable {
    var rank: Rank { get }
    var suit: Suit { get }
}

public extension Card {
    
    var id: Int {
        hashValue
    }
}
