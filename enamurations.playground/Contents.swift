import Foundation

enum Animal {
    case cat,dog,rabbit
}

let cat = Animal.cat

if cat == Animal.cat {
    "Wow this so cute )"
} else if cat == Animal.dog  {
    "The dog is the scary"
} else {
    "White snow"
}

enum ShortCut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
    
}
let wwwApple = ShortCut.wwwUrl(
    path: URL(string: "https://apple.com")!
)
switch wwwApple {
case .fileOrFolder(
    path: let path,
    name: let name):
    path
    name
    break
case .wwwUrl(path: let path):
    path
case .song(artist: let artist, songName: let songName):
    artist
    songName
}

switch wwwApple {
case .fileOrFolder(
    let path,
    let name):
    path
    name
    break
case .wwwUrl(let path):
    path
case .song(let artist,let songName):
    artist
    songName
}

switch wwwApple {
case let .fileOrFolder(
    path,
    name):
    path
    name
    break
case let .wwwUrl(path):
    path
    break
case let .song(artist,songName):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let shapeOfYou = ShortCut.song(
    artist: "Ed Sharen",
    songName: "Shape of you"
)

if case let .song(artist, songName) = shapeOfYou {
    artist
    songName
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMode: String)
}
struct Test{
    var name: String
    var lastName: String
    
    func getName() -> String {
        return name
    }
}
let test = Test(name: "Samandar", lastName: "Asiydinov")
test.getName()

enum FavoriteEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}
FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)
FavoriteEmoji.fire.rawValue

if let blush = FavoriteEmoji(rawValue: "😊") {
    "Blush is the blush"
    blush
} else {
    "Emoji doesn't extists"
}

if let snow = FavoriteEmoji(rawValue: "❄️") {
    "The snowing"
    snow
} else {
    "The rainning"
}

enum Mobile {
    case samsung,redmi,iphone
    mutating func makeOther() {
        self = Mobile.samsung
    }
}
var redmi = Mobile.redmi
redmi.makeOther()
redmi

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    func calculateResult(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
        case let .add(a, b):
            return a + b
        case let .subtract(a,b):
            return a - b
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}
