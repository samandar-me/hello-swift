import Foundation

func noArgumentsAndNoReturnType() {
    print("Android and IOS")
}

func withArgument(value: Int) {
    print(value + 2)
}

func withReturn(name: String) -> String{
    name + " hehe"
}

func customMinus(
    _ value1: Int,
    _ value2: Int
) -> Int {
    value1 - value2
}

customMinus(324, 23)


func getFullName(
    _ name: String = "Samandar",
    _ lastName: String = "Asiydinov"
) -> String {
    return "\(name) \(lastName)"
}

getFullName()
