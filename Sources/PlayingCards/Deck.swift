import Foundation

public final class Deck {
    
    public var cards: [PlayingCard] = []
    
    public init() {
        generateNewDeck()
    }
    
    public func shuffle() {
        cards.shuffle()
    }
    
    /// Extracts a single card from the deck.
    /// - Returns: The extracted card or nil if the deck is empty.
    public func pullCard() -> PlayingCard? {
        guard cards.isEmpty == false else {
            return nil
        }
        return cards.removeLast()
    }
    
    /// Replaces the current deck with a fresh new deck of 52 cards.
    public func generateNewDeck() {
        var collection: [PlayingCard] = []
        for rank in Rank.allCases {
            collection.append(DiamondCard(rank: rank))
            collection.append(HeartCard(rank: rank))
            collection.append(ClubCard(rank: rank))
            collection.append(SpadeCard(rank: rank))
        }
        cards = collection
    }
}
