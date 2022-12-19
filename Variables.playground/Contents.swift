import Foundation


//let name = "Android"
//let lastname = "Kotlin"
//let name1 = "IOS"
//let lastname2 = "Swift"
//
//var arr = [
//    name,
//    lastname,
//    name1,
//    lastname2
//]
//arr.append("Dart")
//let k = "Kotlin"
//var j = k
//j = "Java"
//
//print(j)

let names = NSMutableArray(
        array: [
            "kotlin",
            "java",
            "swift",
            "objective-c"
        ]
)

func changeTheArrar(array: NSArray) {
    var copy = array as! NSMutableArray
    copy.add("dart")
}

changeTheArrar(array: names)
print(names)



