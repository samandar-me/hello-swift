import Foundation

protocol CanBreathe {
    func breathe()
}

struct Animal : CanBreathe {
    func breathe() {
        "Animal breathing..."
    }
}

struct Person : CanBreathe {
    func breathe() {
        "Person breathing..."
    }
}

let animal = Animal()
animal.breathe()
let person = Person()
person.breathe()

protocol HasName {
    var name: String {get}
    var age: Int {get set}
    mutating func increase(by value: Int)
}
//struct Dog: HasName {
//    var name: String
//    var age: Int
//}
//var bobik = Dog(
//    name: "Bobik",
//    age: 2
//)
//bobik.name
//bobik.age

protocol Vehicle {
    var speed: Int {get set}
    mutating func increaseSpeed(by value: Int)
}
extension Vehicle {
    mutating func increaseSpeed(
        by value: Int
    ) {
        self.speed += value
    }
}

func increaseSpeedIfVehicle(obj: Any) {
    if var vehicle = obj as? Vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 19)
        vehicle.speed
    } else {
        "This was not a vehicle"
    }
}
struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}
let bike = Bike()
increaseSpeedIfVehicle(obj: bike)

// extensions

extension Int {
    func plusInt() -> Int {
        return self + 2
    }
}
2.plusInt()

struct PersonExt {
    let name: String
    let lastname: String
}
extension PersonExt {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        self.init(
            name: components.first ?? fullName,
            lastname: components.last ?? fullName
        )
    }
}

protocol GoesVrom {
    var vromValue: String {get}
    func goVrom() -> String
}
extension GoesVrom {
    func goVrom() -> String {
        "\(self.vromValue) vroom "
    }
}
struct Car  {
    let brand: String
    let price: String
}

let damas = Car(
    brand: "Chevrolet",
    price: "32343"
)
extension Car : GoesVrom {
    var vromValue: String {
        "\(self.brand) \(self.price)"
    }
}

let car = Car(brand: "Damas", price: "3423")
car.goVrom()

class MyDouble {
    let double: Double
    init(double: Double) {
        self.double = double
    }
}
extension MyDouble {
    convenience init() {
        self.init(double: 0)
    }
}
let myDouble = MyDouble().double
myDouble
