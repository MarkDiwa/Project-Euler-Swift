import Foundation

/*
 
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

 Find the sum of all the multiples of 3 or 5 below 1000.
 
 */

func sumOfMultiplesOf(_ multiplesOf: [Int], below maxNumber: Int) -> Int {
    let arrayOfNumbers = Array(1..<maxNumber)
    let multiples = arrayOfNumbers.filter({ number in
        var isMultiple = false
        multiplesOf.forEach({
            if number.isMultiple(of: $0) {
                isMultiple = true
                return
            }
        })
        return isMultiple
    })
    return multiples.reduce(0, +)
}

print(sumOfMultiplesOf([3,5], below: 1000)) // 233168
