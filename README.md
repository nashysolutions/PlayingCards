# PlayingCards

![iOS](https://img.shields.io/badge/iOS-13%2B-blue)
![macOS](https://img.shields.io/badge/macOS-10.15%2B-blue)
![tvOS](https://img.shields.io/badge/tvOS-13%2B-blue)
![watchOS](https://img.shields.io/badge/watchOS-6%2B-blue)

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

Unicode representations of the front of each card, can be printed from the following subclasses, which you would need to map. Otherwise, the description of `PlayingCard` is just a string desciption of the rank and suit. 

```swift
let deck = Deck()
deck.shuffle()
let cards: [PlayingCard] = deck.cards.map { (card: PlayingCard) in
    switch card.suit {
    case .clubs:
        return ClubCard(rank: card.rank)
    case .hearts:
        return HeartCard(rank: card.rank)
    case .diamonds:
        return DiamondCard(rank: card.rank)
    case .spades:
        return SpadeCard(rank: card.rank)
    }
}
```

If the card's `isHidden` property is set to true, it will be the unicode char `U+1F0A0` representing the back of a card.

The `PlayingCard` type conforms to the `Card` protocol so a `PlayingCard` or a subclass of `PlayingCard` can be passed along to a SwfitUI View like so.

```swift
import SwiftUI
import PlayingCards

struct CardView<C: Card>: View {
    
    let card: C
    let size: CGFloat
    
    var body: some View {
        Text(card.description)
            .font(.system(size: size))
            .foregroundColor(color)
    }
    
    private var color: Color {
        if card.isHidden {
            return .black
        }
        switch card.suit {
        case .diamonds, .hearts: return .red
        case .clubs, .spades: return .black
        }
    }
}

struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        CardView(card: ClubCard(rank: .seven), size: 100)
    }
}
```
