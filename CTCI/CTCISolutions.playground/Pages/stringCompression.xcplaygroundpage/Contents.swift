//: [Previous](@previous)

import Foundation

func shouldCompress(a: String, charCount: [Character: Int]) -> Bool {
    if a.count % 2 == 0 {
        return (charCount.count < a.count/2 ? true : false)
    } else {
        return (charCount.count <= a.count/2 ? true: false)
    }
    return false
}

func compressString(a: String) -> String {
    var newString = ""
    if shouldCompress(a: a, charCount: a.getCharDict()) {
        let dict = a.getCharDict()
        for (key, val) in dict {
            newString += "\(key)\(val)"
        }
    } else {
        return a
    }
    return newString
}

extension String {
    func getCharDict() -> [Character: Int] {
        var dict: [Character: Int] = [:]
        for c in self {
            if let _ = dict[c] {
                dict[c]! += 1
            } else {
                dict[c] = 1
            }
        }
        return dict
    }
}

compressString(a: "abcde")
compressString(a: "aaa")
compressString(a: "aa")
compressString(a: "a")
compressString(a: "aabb")
compressString(a: "aaab")
