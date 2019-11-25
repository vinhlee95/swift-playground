class Human {
  var name: String
  init(name: String) {
    self.name = name
 }

  // Convenience init intializes the designated init method
  convenience init() {
    self.init(name: "Vinh")
  }
}

var me = Human()
//print(me.name)

//
// CLASS EXTENSION
//
// Define a class
class Apartment {
    var room: Int
    var size: String
    
    init(room: Int, size: String) {
        self.room = room
        self.size = size
    }
}

// Use case: when create a new apartment, we need to dinamically add size based on room amount
// Make a convenience init extension:
extension Apartment {
    convenience init(room: Int) {
        var size: String
        if(room > 4) {
            size = "Large"
        } else if(room < 2 && room > 0) {
            size = "Small"
        } else {
            size = "Medium"
        }
        
        self.init(room: room, size: size)
    }
}

var myApartment = Apartment(room: 1)
print(myApartment.size)
