import Foundation

public class PlayingCard: Card, CustomStringConvertible {
    
    public let rank: Rank
    public let suit: Suit
    
    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(rank.hashValue)
        hasher.combine(suit.hashValue)
    }
    
    public static func ==(lhs: PlayingCard, rhs: PlayingCard) -> Bool {
        lhs.rank == rhs.rank && lhs.suit == rhs.suit
    }
    
    public var description: String {
        rank.description + " of " + suit.description
    }
}
