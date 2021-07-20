import Foundation

/*
 
 The sum of the squares of the first ten natural numbers is 385.

 The square of the sum of the first ten natural numbers i, 3025.

 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 

 */

func differenceFrom(numbers: [Int]) {
    var sum1 = 0
    var sum2 = 0
    numbers.forEach({
        sum1 += $0
        sum2 += ($0 * $0)
    })
    
    let difference = (sum1 * sum1) - sum2
    print(difference)
}

differenceFrom(numbers: Array(1...100)) // 25164150
