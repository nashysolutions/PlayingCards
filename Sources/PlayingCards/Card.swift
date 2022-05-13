import Foundation

public protocol Card: Hashable, Identifiable, CustomStringConvertible {
    var rank: Rank { get }
    var suit: Suit { get }
    var isHidden: Bool { get }
}

public extension Card {
    
    var id: Int {
        hashValue
    }
}
