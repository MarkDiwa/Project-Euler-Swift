import Foundation

/*
 
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 
 */

extension Int {
    var isPrime: Bool {
        return self > 1 && !(2..<self).contains { self % $0 == 0 }
    }
    
    var smallestFactor: Int {
        for index in 2...Int(sqrt(Double(self))) {
            if self % index == 0 && index.isPrime {
                return index
            }
        }
        return self
    }
}

func largestPrimeFactorOf(number: Int) -> Int? {
    var largestPrimeFactor = number
    var smallestPrimeFactor = largestPrimeFactor.smallestFactor
    repeat {
        largestPrimeFactor /= smallestPrimeFactor
        smallestPrimeFactor = largestPrimeFactor.smallestFactor
    } while smallestPrimeFactor < largestPrimeFactor
    return largestPrimeFactor
}

print(largestPrimeFactorOf(number: 600851475143)!) // 6857
