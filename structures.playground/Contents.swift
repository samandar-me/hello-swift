import Foundation

struct Person {
    let name: String
        let lastName: String
}
let person1 = Person(name: "Samandar", lastName: "Asiydinov")
person1.name

struct Club {
    var name: String
    var shortName: String
    var league: String
    var rating: Int
    var price: Double
}
let tot = Club(name: "Tottenham", shortName: "Tot", league: "APL", rating: 3, price: 3432.23)

struct Person2 {
    let name: String
    let lastName: String
    var fullName: String {
        "\(name) \(lastName)"
    }
}

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed += speed
    }
}
var car = Car(currentSpeed: 23)
car.currentSpeed
car.drive(speed: 32)
car.currentSpeed

struct Student {
    var name: String
    var lastName: String
}
var s1 = Student(name: "Ogash", lastName: "Ani")
var s2 = s1

s2.name = "Sam"
s2.lastName = "Hehe"

s1.name
s1.lastName
