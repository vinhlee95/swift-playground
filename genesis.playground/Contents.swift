var peopleArray: [String] = ["Steve Jobs", "Elon Musk"]
var numberArray: [Int] = [1,2,3,4]

func printElement<T>(array: [T]) {
    for el in array {
        print(el)
    }
}

//printElement(array: numberArray)

// Non-generic struct
struct Family {
    var members = [String]()
    
    init(members: [String]) {
        for member in members {
            self.members.append(member)
        }
    }
    
    // var members: [String] = []
    mutating func addMember(name: String) {
        members.append(name)
    }
}

var myFamily = Family(members: ["Dad", "Mom"])
myFamily.addMember(name: "Brother")
print(myFamily.members)
