// Playground - noun: a place where people can play

import Cocoa

// Playground - noun: a place where people can play

// MARK: PART 1
var myArray = [10,2,5,4]

// Sort Array from smallest to largest number
sort(&myArray) { $0 < $1 }

myArray

// Find target Number in Array

func findTargetNumber (myArray: [Int], targetNumber: Int) -> Int {
    for (index, value) in enumerate(myArray) {
        if value == targetNumber {
            println("Found target number at index: \(targetNumber)")
            return index
        }
    }
    println("I cannot find the target number \(targetNumber)")
    return -1
}

findTargetNumber(myArray, 5)

// MARK: PART 2.1

// Find target Number multiple times in Array
var myBiggerArray = [10,2,3,1,5,5,5,15]

sort(&myBiggerArray) { $0 < $1 }

myBiggerArray

func findTargetNumbers (myArray: [Int], targetNumber: Int) -> [Int] {
    
    var resultsArray = [Int]()
    
    for (index, value) in enumerate(myArray) {
        if value == targetNumber {
            resultsArray.append(index)
        }
    }
    if resultsArray.count == 0 {
        resultsArray.append(-1)
    }
    return resultsArray
}

findTargetNumbers(myBiggerArray, 1)
findTargetNumbers(myBiggerArray, 5)
findTargetNumbers(myBiggerArray, 50)

// MARK: PART 2.2

struct Range {
    var indexOfFirstOccurance : Int = -1
    var numberOfOccurances: Int = 0
}

var rangeOfResults = Range(indexOfFirstOccurance: -1, numberOfOccurances: 0)


func findRangeOfTargetNumbers (myArray: [Int], targetNumber: Int) -> Range {
    
    var resultsArray = [Int]()
    
    for (index, value) in enumerate(myBiggerArray) {
        if value == targetNumber {
            if rangeOfResults.indexOfFirstOccurance == -1 {
                rangeOfResults.indexOfFirstOccurance = index
            }
            resultsArray.append(index)
        }
    }
    rangeOfResults.numberOfOccurances = resultsArray.count - 1
    return rangeOfResults
}

myBiggerArray
findRangeOfTargetNumbers(myBiggerArray, 5)
rangeOfResults

