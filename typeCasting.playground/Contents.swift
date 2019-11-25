//
// UPCASTING
//
var name = "Vinh" as Any
var age = 22 as Any
var anyArray = [name, age]
print(type(of: anyArray))

//
// DOWNCASTING
//
var stringName = name as! String
print(stringName, type(of: stringName))

var stringAge = age as! Int
print(stringAge)

//
// TYPE CASTING AND TYPE CHECKING
//
class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Singer: Human {
    func sing() {
        print("We are the world")
    }
}

class Author: Human {
    func write() {
        print("I am the best writer")
    }
}

var peopleArray = [
    Singer(name: "Michale Jackson"),
    Author(name: "J.K.Rowling"),
    Author(name: "Vinh")
]

var singerAmount: Int = 0
var authorAmount: Int = 0

for person in peopleArray {
    // Checking types via is
    if person is Singer {
        singerAmount = singerAmount + 1
    } else if person is Author {
        authorAmount = authorAmount + 1
    }
}

print("There are \(singerAmount) singers")
print("There are \(authorAmount) authors")
