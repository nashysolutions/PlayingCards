import Foundation

public struct PlayingCard: Hashable, Identifiable {
    
    public var id: Self { self }
    
    public let rank: Rank
    public let suit: Suit
    
    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
}
