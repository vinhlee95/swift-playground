struct Screen {
    var size: Double
    
    init(size: Double) {
        self.size = size
    }
    
    init(sizeInCentimeter: Double) {
        let sizeInInch: Double = sizeInCentimeter / 2.54
        self.init(size: sizeInInch)
    }
}

var myScreen = Screen(sizeInCentimeter: 35.56)
print(myScreen.size)


