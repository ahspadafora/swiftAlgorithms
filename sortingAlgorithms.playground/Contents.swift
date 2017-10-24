//: Playground - noun: a place where people can play

import UIKit

func selectionSort(_ arr: [Int])-> [Int]{
    var copyOfArr = arr
    // iterate over entire array
    for i in 0..<copyOfArr.count {
        // initially set the lowest index to 0
        var lowest = i
        // finds the lowest num in remaining array
        for j in i+1..<arr.count {
            // if copyOfArr[i+1] is lower than copyOfArr[i] set the lowest to be [i+1]
            if copyOfArr[j] < copyOfArr[lowest] {
                lowest = j
                print(lowest)
            }
        }
        if i != lowest {
            copyOfArr.swapAt(i, lowest)
        }
    }
    return copyOfArr
}

selectionSort([5,4,2,8,9,1,2,3,4,5,7])
