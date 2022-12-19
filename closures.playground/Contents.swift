import Foundation

let add: (Int, Int) -> Int
= { (l: Int, r: Int) -> Int in
    l + r
}

add(2,3)

func customAdd(
    _ l: Int,
    _ r: Int,
    using function: (Int, Int) -> Int ) {
    l + r
}

customAdd(4, 2, using: { (l: Int, r: Int) -> Int in
    r + l
})

customAdd(
    20,
    30
) { (l, r) in
    l + r
}

customAdd(
    20,
    30
) {
    $0 + $1
}

let ages = [4,5,2,8,1,3,9]
ages.sorted(by: >)
ages.sorted(by: <)
