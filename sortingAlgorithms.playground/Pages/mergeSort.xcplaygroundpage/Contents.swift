//: [Previous](@previous)

import Foundation

func mergeSort(arr: [Int]) -> [Int] {
    
    func merge(leftArr: [Int], rightArr: [Int]) -> [Int] {
        var lpointer = 0
        var rpointer = 0
        var orderedPile: [Int] = []
        
        while lpointer < leftArr.count && rpointer < rightArr.count {
            if leftArr[lpointer] < rightArr[rpointer] {
                orderedPile.append(leftArr[lpointer])
                lpointer += 1
            } else if rightArr[rpointer] < leftArr[lpointer] {
                orderedPile.append(rightArr[rpointer])
                rpointer += 1
            } else {
                orderedPile.append(leftArr[lpointer])
                lpointer += 1
                orderedPile.append(rightArr[rpointer])
                rpointer += 1
            }
        }
        
        while lpointer < leftArr.count {
            orderedPile.append(leftArr[lpointer])
            lpointer += 1
        }
        while rpointer < rightArr.count {
            orderedPile.append(rightArr[rpointer])
            rpointer += 1
        }
        return orderedPile
    }
    
    if arr.count < 2 {
        return arr
    }
    
    let midPoint = arr.count / 2
    let leftArr = mergeSort(arr: Array(arr[0..<midPoint]))
    let rightArr = mergeSort(arr: Array(arr[midPoint..<arr.count]))
    return merge(leftArr: leftArr, rightArr: rightArr)
}

print(mergeSort(arr: [5,3,28,7,9,1,4,2]))

//: [Next](@next)
