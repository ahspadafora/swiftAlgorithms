//: [Previous](@previous)

import Foundation

func insertionSort(_ arr: [Int]) -> [Int] {
    var newArr = arr
    
    for i in 1..<newArr.count {
        var y = i
        // stores the element at y
        let temp = newArr[y]
        while y > 0 && temp < newArr[y - 1] {
            newArr[y] = newArr[y-1]
            newArr[y-1] = temp
            y -= 1
        }
    }
    return newArr
}

print(insertionSort([5,2,1]))

