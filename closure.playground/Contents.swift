var names = ["Anna", "John", "Henry", "David"]
var sortedNames = names.sorted(by: {(name: String, nextName: String) -> Bool in
    return nextName > name
})

// Infering types && Implicit return
// names is an Array of Strings => name and nextName gets String type
// Single-expression closure can be implicitly returned
var inferSortedNames = names.sorted(by: {name, nextName in nextName > name})

// Sort-hande argument names
var shortHandNames = names.sorted(by: {$0 > $1})

// Operator method
var operatorMethodName = names.sorted(by: >)

print("Sorted \(sortedNames)")
print("Inference function result \(inferSortedNames)")
print("Short hand names \(shortHandNames)")
print("Operator names \(operatorMethodName)")
