//: Playground - noun: a place where people can play

import UIKit

func quickSort<T: Comparable>(arr: inout [T]) {
    quickSort(&arr, left: 0, right: arr.count-1)
}

func quickSort<T: Comparable>(_ arr: inout [T], left: Int, right: Int) {
    if left >= right {
        return
    }
    
    var index = partition(&arr, left: left, right: right)
    quickSort(&arr, left: left, right: index-1)
    quickSort(&arr, left: index, right: right)
}

func partition<T: Comparable>(_ arr: inout [T], left: Int, right: Int) -> Int {
    let pivot = arr[right]
    var i = left
    for j in left..<right {
        if arr[j] <= pivot {
            (arr[i], arr[j]) = (arr[j], arr[i])
            print(arr)
            i += 1
        }
    }
    (arr[i], arr[right]) = (arr[right], arr[i])
    return i
}

var input = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8 ]
print(quickSort(arr: &input))
print(input)
