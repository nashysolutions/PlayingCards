import Foundation

public struct Deck {
    
    public
    var cards: [PlayingCard] = []
    
    public
    init() {
        var collection: [PlayingCard] = []
        for rank in Rank.allCases {
            collection.append(PlayingCard(rank: rank, suit: .diamonds))
            collection.append(PlayingCard(rank: rank, suit: .hearts))
            collection.append(PlayingCard(rank: rank, suit: .clubs))
            collection.append(PlayingCard(rank: rank, suit: .spades))
        }
        collection.shuffle()
        cards = collection
    }
    
    /// Extracts a single card from the deck.
    /// - Returns: The extracted card or nil if the deck is empty.
    public
    mutating func pullCard() -> PlayingCard? {
        guard cards.isEmpty == false else {
            return nil
        }
        return cards.removeLast()
    }
}
