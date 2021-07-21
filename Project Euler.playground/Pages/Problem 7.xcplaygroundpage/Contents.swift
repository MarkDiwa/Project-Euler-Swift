import Foundation

/*
 
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

 What is the 10 001st prime number?
 
 */

extension Int {
    var isPrime: Bool {
        return self > 1 && !(2..<self).contains { self % $0 == 0 }
    }
}

func nthPrimeNumber(n nth: Int) -> Int {
    var nthCounter = 1
    var currentNumber = 2
    while nthCounter != nth {
        currentNumber += 1
        nthCounter += currentNumber.isPrime ? 1 : 0
    }
    return currentNumber
}

print(nthPrimeNumber(n: 10001)) // 104743
