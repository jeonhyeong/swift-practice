import UIKit

func sayHello() {
    print("Hello")
}

sayHello()

func sayHello2(name: String) {
    print("Hello \(name)")
}

sayHello2(name: "Cho")

func sayHello3(name:String) -> String {
    return "Hello " + name
}

print(sayHello3(name: "Cho"))

func sayHello4(name:String = "Cho") {
    print(name)
}

sayHello4()
sayHello4(name: "Kim")

func sayHello5(insertYourName:String, internationalAge age:Int) {
    print("\(insertYourName) is \(age) years old")
}

sayHello5(insertYourName: "Cho", internationalAge: 10)

func sayHello6(_ name:String, _ age:Int) -> String {
    return "\(name) is \(age) years old"
}

print(sayHello6("cho", 20))
