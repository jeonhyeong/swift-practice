import UIKit

class Vehicle {
    var currentSpeed = 0.0 //stored property
    var description:String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()

someVehicle.currentSpeed = 1.0
someVehicle.makeNoise()
print(someVehicle.description)

class Bicycle:Vehicle {
    var hasBasket = false
}

let someBicycle = Bicycle()
someBicycle.hasBasket = true
someBicycle.currentSpeed = 15.0
print(someBicycle.description)
print(someBicycle.hasBasket)

class Tandem:Bicycle {
    var currentNumberOfPassengers = 0
    override var description: String {
        return "Travelling at \(currentSpeed) miles per hour, number of passenger : \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0

print(someTandem.description)

class Train:Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let someTrain = Train()
someTrain.makeNoise()

class Car:Vehicle {
    var gear = 1
    override init(){
        print("Car")
    }
    init(_ newGear:Int) {
        gear = newGear
    }
}

let someCar = Car()

let someCar2 = Car(5)
print(someCar2.gear)

