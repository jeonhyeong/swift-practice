import UIKit

//mutable array
var emptyArray = Array<String>()
var emptyArray2 = [String]()

emptyArray2.append("Anna")
emptyArray2.append("Alex")

print(emptyArray2)

var emptyArray3 = ["Anna", "Alex", "Brian", "Jack"]

emptyArray3 += ["Cho"]
emptyArray3 += ["Jeon"]
emptyArray3 += ["Hyeong"]

print(emptyArray3)

print(emptyArray3[3])

emptyArray3[3] = "Hi"
print(emptyArray3[3])

emptyArray3[4...6] = ["A", "B", "C"]

print(emptyArray3)
print(emptyArray3.count)

//imutable array
let emptyArray4 = ["Anna", "Alex", "Brian", "Jack"]
print(emptyArray4)
