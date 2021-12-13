import Foundation

public final class ClubCard: PlayingCard {
    
    public init(rank: Rank) {
        super.init(rank: rank, suit: .clubs)
    }
    
    public override var description: String {
        switch rank {
        case .ace: return "🃑"
        case .two: return "🃒"
        case .three: return "🃓"
        case .four: return "🃔"
        case .five: return "🃕"
        case .six: return "🃖"
        case .seven: return "🃗"
        case .eight: return "🃘"
        case .nine: return "🃙"
        case .ten: return "🃚"
        case .jack: return "🃛"
        case .queen: return "🃝"
        case .king: return "🃞"
        }
    }
}
