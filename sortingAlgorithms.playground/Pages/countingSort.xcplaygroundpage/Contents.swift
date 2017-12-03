//: [Previous](@previous)

import Foundation

func countingSort(values: [Int]) -> [Int] {
    var countDict: [Int: Int] = [:] // [value: numberOfOccurrances]
    // find the highest value in values
    let max = values.max() ?? 0
    
    // create an array that we'll use to count occurrances
    var countArray = [Int](repeating: 0, count: max+1)
    
    // counts occurance of each int in values and stores in countArray
    values.map{countArray[$0] += 1}
    var sum = 0
    
    // add up the elements, this will be used to map unsorted numbers to results
    for i in 1..<countArray.count {
        countArray[i] = countArray[i] + countArray[i-1]
    }
    print(countArray)
    var result = [Int](repeating: 0, count: values.count+1)
    
    // take the number at index j from the unsorted array, and look at THAT index of countArray
    // example below: values[0] == 8 so look at countArray[8], the int at countArray[8] will be the new index of values[0] (8 in otherwords) in the sorted array
    
    /* ** (because countArray was created from the max # in the unsorted array, there will always be a valid spot at countArray[j] */
    for j in 0..<values.count {
        result[countArray[values[j]]] = values[j]
        
        // subtract one from the countArray[values[j]] so that the next reoccurance of the number is placed 1 index before the original occurence
        countArray[values[j]] -= 1
    }
    // the first element is an extra zero - remove it
    result.removeFirst()
    return result
}
print(countingSort(values: [8, 3, 5, 1, 2, 7, 8, 9]))
