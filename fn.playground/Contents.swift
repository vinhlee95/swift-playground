// Higher order fn
func calculateSumByCondition(list: [Int], condition: (Int) -> Bool) -> Int {
    var sum = 0
    for number in list {
        if(condition(number)) {
            sum += number
        }
    }

    return sum
}

func isMoreThanTen(number: Int) -> Bool {
    return number > 10
}

let list = [0,1,2,12, 22]

let sum = calculateSumByCondition(list: list, condition: isMoreThanTen)

print("Sum is \(sum) ")

//
/////// FUNCTION CLOSURE
//
print("FUNCTION CLOSURE")
var numbers = [1,3,5,7,9]

/*
 Map
- Single statement closure implicitly returns the value of the only statement
 */
let mappedNumbers = numbers.map({number in
    3 * number
})

/*
 Sort
 - when a closure is the only argument, can omit the ()
 */
let sortedNumbers = numbers.sorted {
    $0 > $1
}


print("Map \(mappedNumbers)")
print("Sort \(sortedNumbers)")

