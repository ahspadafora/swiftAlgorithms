//: [Previous](@previous)

import Foundation

func binarySearch(val: Int, values: [Int]) -> Bool
{
    var lp = 0
    var rp = values.count - 1
    var mp = (rp + lp)/2
    while lp < rp && rp < values.count {
        if val == values[mp] {
            return true
        } else if val > values[mp] {
            lp = mp + 1
            mp = (rp + lp) / 2
        } else if val < values[mp] {
            rp = mp - 1
            mp = (rp + lp) / 2
        }
    }
    if lp == rp && rp < values.count {
        return values[lp] == val
    }
    return false
}
print(binarySearch(val: 29, values: [30]))

