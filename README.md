# PlayingCards

![iOS](https://img.shields.io/badge/iOS-13%2B-blue)
![macOS](https://img.shields.io/badge/macOS-10.15%2B-blue)
![tvOS](https://img.shields.io/badge/tvOS-13%2B-blue)
![watchOS](https://img.shields.io/badge/watchOS-6%2B-blue)

A standard 52 deck of [French-suited playing cards](https://en.wikipedia.org/wiki/French-suited_playing_cards).

## Usage

The `Deck` instance has an array of cards. Upon instantiation, 52 cards are populated, in random order. 

```swift
struct Dealer {
    
    private var deck = Deck()
    
    mutating func pullCard() -> PlayingCard? {
        if let card = deck.pullCard() {
            return card
        }
        self.deck = Deck()
        return pullCard()
    }
}
```
