/*
 Class initialisation
 */
class Home {
    var roomAmount: Int
    
    init(roomAmount: Int) {
        self.roomAmount = roomAmount
    }
    
    func countRoom() -> String {
        return "This house has \(roomAmount) rooms"
    }
}

var myHome = Home(roomAmount: 4)

print(myHome.countRoom())

/*
 Enum
 */
enum Rank: Int {
    case first = 1
    case second, third, forth
    
    func showRank() -> String {
        switch self {
        case .first:
            return "first rank"
        case .second:
            return "second rank"
        default:
            return String(self.rawValue)
        }
    }
}

print("Raw value \(Rank.first.rawValue)")
