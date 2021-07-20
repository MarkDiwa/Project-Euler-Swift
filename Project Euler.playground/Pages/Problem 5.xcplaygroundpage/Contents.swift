import Foundation

/*
 
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 
 */

func gcd(numerator: Int, denominator: Int) -> Int
{
    if (numerator == 0) {
        return denominator;
    } else {
        return gcd(numerator: denominator % numerator, denominator:numerator);
    }
}

func evenlyDivisibleNumber(in numbers: [Int]) {
    var answer = 1
    for index in numbers {
        answer *= index / gcd(numerator: answer, denominator: index)
    }
    
    print(answer)
    
}

evenlyDivisibleNumber(in: Array(1...20)) // 232792560
