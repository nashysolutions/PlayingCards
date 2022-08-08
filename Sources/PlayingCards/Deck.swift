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
            collection.append(PlayingCard(rank: rank, suit: .diamonds))
            collection.append(PlayingCard(rank: rank, suit: .hearts))
            collection.append(PlayingCard(rank: rank, suit: .clubs))
            collection.append(PlayingCard(rank: rank, suit: .spades))
        }
        cards = collection
    }
}
