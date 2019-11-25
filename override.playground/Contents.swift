class Apartment {
    var description: String {
        return "I am an apartment"
    }
    var rooms: Int
    var squareSize: Int = 100
    
    init(rooms: Int) {
        self.rooms = rooms
    }
}

class SmallApartment: Apartment {
    override var description: String {
        return "\(super.description) with small size"
    }
    
    override init(rooms: Int) {
        super.init(rooms: rooms)
        squareSize = 40 // override super class square size
        print("I set rooms myself")
    }
}

var myApartment = SmallApartment(rooms: 2)
print(myApartment.description, ", rooms: ", myApartment.rooms, ", square size: ", myApartment.squareSize)


