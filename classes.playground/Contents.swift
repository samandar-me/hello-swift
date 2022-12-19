import Foundation

class Person {
    var name: String
    var age: Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}
let person = Person(name: "Samandar", age: 23)
person.age
person.increaseAge()
person.age

class Vehice {
    func goVroom() {
        "g'in g'in"
    }
}
class Car: Vehice {
    
}
let car = Car()
car.self

class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}

let baz = Person2(age: 23)
baz.increaseAge()
