class Family {
    var _members:Int = 4
    
    var members:Int {
        get {
         return _members
        }
        
        
        set(newAmount) {
            guard newAmount > 2 else {
                print("Members must be greater than 2")
                return
            }
            
           _members = newAmount
        }
  }
}

var myFamily = Family()

// Using get
//print(myFamily.members)

// Using set
myFamily.members = 7
//print(myFamily.members)

//
// Property observer
//
var userLoginInfo: Bool = false {
  willSet(newValue) {
    print("The user has tried something")
  }
  didSet {
    if userLoginInfo {
      print("The user has switched from \(oldValue) to \(userLoginInfo)")
      // Backgroud color
      // Animation
      // Pop Up
      // All kinds of stuff
  }
 }
}

userLoginInfo = true
