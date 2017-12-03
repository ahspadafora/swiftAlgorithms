//: [Previous](@previous)

import Foundation

func isPermutationOfPalindrome(a: String) -> Bool {
    let aDict = getCharacterOccurrances(input: a)
    for (key, val) in aDict {
        if val % 2 != 0 {
            return false
        }
    }
    return true
}

func getCharacterOccurrances(input: String) -> [Character: Int] {
    var countDict: [Character: Int] = [:]
    for c in input {
        if c != " " {
            if let _ = countDict[c] {
                countDict[c]! += 1
            } else {
                countDict[c] = 1
            }
        }
    }
    return countDict
}

isPermutationOfPalindrome(a: "cat tac")

