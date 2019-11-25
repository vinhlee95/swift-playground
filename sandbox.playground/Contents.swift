var number = 5
//print("Our number is \(number)")

var longword = "sdsdlfklskflwosdsdssđsđeiwsdfsfdseoieowieo"
//print("Char count \(longword.count)")

// Index
var firstLetter = longword[longword.startIndex]
//print("First letter \(firstLetter)")

// Optional type and unwrapping
var myAge: Int? = 123
let normalTypeAge = myAge! // force unwrapping
//print(type(of: myAge))
//print(type(of: normalTypeAge))

//
// OPTIONAL CHAINING
//
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello \(self.name)")
    }
}

var Jobs = Person(name: "Job")
//Jobs.sayHello()

class Book {
    var name: String
    var author: Person?
    
    init(name: String) {
        self.name = name
    }
}

var myBook = Book(name: "Introduction to programming")
//print("My book is \(myBook.name)")

var author = myBook.author?.name
//print(author)

// Unwrapping by if statement
if let bookAuthor = author {
    print(bookAuthor)
} else {
//    print("This book has no author")
}

//
// GUARD STATEMENT
//
func isCorrect() {
    let correct: Bool = true
    
    guard correct else {
        print("It is not correct")
        return
    }
    
    print("It is correct")
}
isCorrect()

// Unwrap multiple optionals
var publicName: String? = "James"
var publicAge: Int? = nil

func sayHi() {
    guard let name = publicName, let age = publicAge else {
        print("Some data is missing")
        return
    }
    
    print("Hi \(name). Are you \(age) years old?")
}

sayHi()
