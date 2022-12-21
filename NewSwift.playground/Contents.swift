import Foundation


func isEven(_ num: Int) -> Bool {
    return num % 2 == 0
}
isEven(3)


class Person {
    let name: String
    let lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
}

let person = Person(name: "Ashi", lastName: "f")
person.name


let b: Double = 23.2

//func notNilAssertion<T>(value: T?) -> T {
//    if let actualValue = value {
//        return actualValue
//    }
//    return nil
//}

func number(value: Int) -> Bool {
    guard value > 5 else {
        return false
    }
    print("Bla blah")
    return true
}

number(value: 3)


enum State {
    case Loading
    case Error
    case Success
}

let current = State.Success

func checkState() {
    switch current {
    case .Loading:
        "Show loading"
        break
    case .Error:
        "Error occured"
        break
    case .Success:
        "Success hehe"
        break
    }
}

checkState()

// Protocols

protocol CarProto {
    var color: String {get set}
    
    func drive()
    func isGas() -> Bool
}
class Car {
    
}

class BMW: Car, CarProto {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func drive() {
        "Driving car"
    }
    
    func isGas() -> Bool {
        return true
    }
}

let bmw = BMW(color: "Black")
bmw.drive()
bmw.isGas()
bmw.color

// closures

var myClosure: ((Int) -> Bool) = { num in
    return num > 5
}

func isGraterThanFive(number: Int) -> Bool {
    return number > 5
}

isGraterThanFive(number: 4)
myClosure(23)


// arrays & dictonaries

let languages: [String] = ["Kotlin","Swift","Java","CPP","C", "Python","JavaScript"]
var any: [Any] = [2,2.3,"he",false]

for a in any {
    print(a)
}

for language in languages {
    print(language)
}

var counter = 0
repeat {
    print(languages[counter])
    counter+=1
} while(counter != languages.count)

// map

var mapOf: [Int: String] = [0: "Tottenham",1: "Real"]

for map in mapOf {
    print(map)
}

for (k,v) in mapOf {
    print("\(k) = \(v)")
}

for (index,_) in mapOf.enumerated() {
    print(index)
}
