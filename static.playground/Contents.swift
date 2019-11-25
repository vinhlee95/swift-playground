struct House {
    static var rooms = 4
}
print(House.rooms)

class GrandParent {
  static var numberOfYearsInMarriage = 30
  static func introduce() {
    print("We've been married for \(numberOfYearsInMarriage)")
 }

  class func introducing() {
    print("We've been married for \(numberOfYearsInMarriage)")
  }

  final func cantOverride() {
    print("you can't change me")
  }
}

class Parent: GrandParent {
    override class func introducing() {
        print("We have been married for 5 years")
    }
}

Parent.introducing()

