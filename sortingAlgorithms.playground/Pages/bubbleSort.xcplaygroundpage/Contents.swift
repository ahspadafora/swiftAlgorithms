//: [Previous](@previous)

import Foundation

func bubbleSort(_ arr: [Int]) -> [Int] {
    
    var newArr = arr
    var didSwap = false
    repeat {
        didSwap = false
        for i in 1..<newArr.count {
            if newArr[i-1] > newArr[i] {
                newArr.swapAt(i-1, i)
                didSwap = true
            }
        }
    } while didSwap == true
    return newArr
}

print(bubbleSort([3,9,8,2,5,1])) // 1, 2, 3, 5, 8, 9
//: [Next](@next)
