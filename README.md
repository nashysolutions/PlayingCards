# PlayingCards

A standard 52 deck of [French-suited playing cards](https://en.wikipedia.org/wiki/French-suited_playing_cards).

## Usage

The cards array can be managed directly. However, there are some convenience functions such as `pullCard()`.

```swift
let deck = Deck()
deck.shuffle()
print(deck.cards.count) // 52
let card: PlayingCard? = deck.pullCard()
print(deck.cards.count) // 51
deck.generateNewDeck()
print(deck.cards.count) // 52
```
