import Foundation
import SwiftUI

let int: Int = 32432
let double: Double = 23423.342
let float: Float = 323432.001

print(int + Int(double))

// typealias

typealias Code = String

let str: Code = "Hehe"

func codeGenerate(str: Code) -> Code {
    return str + " aa"
}

codeGenerate(str: str)


typealias Map = [Int: String]

let mapOf = [0: "Swift", 1: "Kotlin", 2: "Dart"]

func mapGenerate(map: Map) -> Map {
    return map
    
}

mapGenerate(map: mapOf)


var valideateFunc: ((String) -> Bool)?

//func enterCode(code: String) -> Bool {
//    if let valideate = valideateFunc {
//        return valideate?(code)
//    }
//}


let name = "Mobile"

var counter = name.count > 5 ? "Android" : "ios"

var array = [43,23,1,5,75,92,28,46]
func isNumberInArray(value: Int, arr: [Int]) -> Bool {
    for i in arr {
        if i == value {
            return true
        }
    }
    return false
}

func searchNumber(target: Int, arr: [Int]) -> Int {
    for (i,v) in arr.enumerated() {
        if target == arr[i] {
            return arr[i]
        }
    }
    return -1
}


isNumberInArray(value: 1, arr: array)
searchNumber(target: 23, arr: array)
