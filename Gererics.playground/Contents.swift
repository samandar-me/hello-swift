import Foundation
import CoreGraphics

func perfrom(
    _ op:(Int, Int) -> Int,
    a: Int,
    b: Int
) -> Int {
    op(a, b)
}

perfrom(+, a: 10, b: 20)
perfrom(-, a: 153, b: 20)
perfrom(/, a: 1034, b: 20)
perfrom(*, a: 1043, b: 20)


func performInt<N:Numeric>(
    _ op: (N, N) -> N,
a: N,
    b: N
) -> N {
    return op(a, b)
}
performInt(+, a: 23, b: 34)
let n = performInt(+, a: 34.2, b: 34342.2)


protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

func runAndJump<T: CanRun & CanJump>(_ value: T) {
    value.jump()
    value.run()
}

struct Person: CanRun, CanJump {
    func jump() {
        "jumping..."
    }
    func run() {
        "running.."
    }
}

let person = Person()
runAndJump(person)

extension [String] {
    func longestString() -> String? {
        self.sorted{ (a: String, b: String) -> Bool in
            a.count > b.count
        }.first
    }
}

let array = ["Kotlin","Java","Swift","Objective-C","Python","JavaScript","Dart","C++"]

array.longestString()

protocol View {
    func addSubView(_ view: View)
}

struct Button : View {
    func addSubView(_ view: View) {
        ""
    }
}


// optionals

func square(_ value: Int?) -> Int {
    if let value {
        return value * value
    } else {
        return 0
    }
}
square(nil)

var age: Int? = nil

age = 2


func checkAge() {
    guard age != nil else {
        "Age is nil"
        return
    }
    "Age is not null here"
}

checkAge()

switch age {
case .none:
    "Age has no value"
    break
case let .some(value):
    "Age has the value \(value)"
}

func getFullName(
    firstName: String,
    lastName: String?
) -> String? {
    return nil
}

getFullName(firstName: "Nana", lastName: nil)


