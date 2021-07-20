import Foundation

/*
 
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

 Find the largest palindrome made from the product of two 3-digit numbers.
 
 */

extension Decimal {
    var int: Int {
        return NSDecimalNumber(decimal: self).intValue
    }
}

extension Int {
    var isPrime: Bool {
        return self > 1 && !(2..<self).contains { self % $0 == 0 }
    }
}

func largestPalindrome(numberOfDigit: Int) {
    let lowerBound = (pow(10, numberOfDigit - 1)).int
    let upperBound = (pow(10, numberOfDigit)).int - 1
    var largestPalindrome = -1
    for multiplicand in lowerBound...upperBound {
        for multiplier in lowerBound...upperBound {
            let product = multiplicand * multiplier
            let productString = String(product)
            if productString == String(productString.reversed()) && product > largestPalindrome {
                largestPalindrome = product
            }
        }
    }
    print(largestPalindrome)
}

func largestPalindrome2(numberOfDigit: Int) {
    let lowerBound = (pow(10, numberOfDigit - 1)).int
    let upperBound = (pow(10, numberOfDigit)).int - 1
    let maxNumber = upperBound * upperBound
    let range = Array(lowerBound...upperBound)
    var largestPalindrome = 0
    for dividend in stride(from: maxNumber, to: 1, by: -1) {
        let stringValue = String(dividend)
        if stringValue == String(stringValue.reversed()) && !dividend.isPrime {
            for divisor in stride(from: upperBound, to: lowerBound, by: -1) {
                if dividend % divisor == 0 && range.contains(dividend/divisor) {
                    largestPalindrome = dividend
                    break
                }
            }
            if largestPalindrome > 0 {
                break
            }
        }
    }
    print(largestPalindrome)
}

largestPalindrome2(numberOfDigit: 3) // 906609
