//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Given two strings, write a method to decide if one is a permutation of the other

func isAPermutation(a: String, b: String) -> Bool {
    guard a.count == b.count else { return false }
    let aDict: [Character: Int] = getCharacterOccurrances(input: a)
    let bDict: [Character: Int] = getCharacterOccurrances(input: b)
    
    for (key, value) in aDict {
        if let complimentaryC = bDict[key] {
            guard complimentaryC == value else { return false }
        } else {
            return false
        }
    }
    return true
}

func getCharacterOccurrances(input: String) -> [Character: Int] {
    var countDict: [Character: Int] = [:]
    for c in input {
        if let _ = countDict[c] {
            countDict[c]! += 1
        } else {
            countDict[c] = 1
        }
    }
    return countDict
}


isAPermutation(a: "ce", b: "ec")
