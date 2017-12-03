//: [Previous](@previous)

import Foundation

func oneAway(a: String, b: String) -> Bool {
    var foundDifference = false
    if abs(a.count - b.count) > 1 { return false }
    
    // if a is 1 less than b
    if a.count + 1 == b.count {
        return oneEditInsert(shorter: Array(a), longer: Array(b))
        // if a is 1 more than b
    } else if a.count - 1 == b.count {
        return oneEditInsert(shorter: Array(b), longer: Array(a))
    } else /*they are equal*/ {
        return oneEditReplace(a: Array(a), b: Array(b))
    }
    return true
}

func oneEditInsert(shorter: [Character], longer: [Character]) -> Bool {
    var indexA = 0
    var indexB = 0
    while indexB < longer.count && indexA < shorter.count {
        if shorter[indexA] != longer[indexB] {
            if indexA != indexB {
                return false
            }
            indexB += 1
        } else {
            indexA += 1
            indexB += 1
        }
    }
    return false
}

func oneEditReplace(a: [Character], b: [Character]) -> Bool {
    var foundDiff = false
    for i in 0..<a.count {
        if a[i] != b[i] {
            if foundDiff {
                return false
            }
            foundDiff = true
        }
    }
    return false
}

oneAway(a: "cat", b: "mat")
