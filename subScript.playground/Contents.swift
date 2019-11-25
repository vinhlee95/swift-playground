struct weekDays {
    var days = ["Mon", "Tues"]
    
    subscript(index: Int) -> String {
        guard index <= days.count else {
            return "There is no day with that index"
             
        }
    
        return days[index]
    }
}

var myWeekDays = weekDays()
var firstDay = myWeekDays[1]
print(firstDay)
    
