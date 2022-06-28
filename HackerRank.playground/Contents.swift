//import UIKit
//MARK: 1
// Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

//func plusMinus(input: [Int]){
//
//
//    var positiveN: Double = 0
//    var negativeN: Double = 0
//    var neutralN: Double = 0
//    for item in input{
//        if item > 0{
//            positiveN += 1
//        }else if item < 0{
//            negativeN += 1
//        }else {
//            neutralN += 1
//        }
//
//    }
//
//    let n: Double = Double(input.count)
//    let positiveRatio = Double(positiveN/n)
//    let negativeRatio = Double(negativeN/n)
//    let neutralRatio = Double(neutralN/n)
//
////    print(n, " n\n", positiveN, " positiveN\n", negativeN, " negativeN\n", neutralN, " neutralN\n", positiveRatio, " positiveRatio\n", negativeRatio, " negativeRatio\n", neutralRatio, " neutralRatio")
//
//    print(positiveRatio, "\n", negativeRatio, "\n", neutralRatio)
//}
//
//plusMinus(input: [0, 0, -1, 1, 1])


//MARK: 2
//Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
//
//Example
//
//The minimum sum is  and the maximum sum is . The function prints
//
//16 24

//func minMaxSum(arr: [Int]){
//    let count = arr.count
//    var minSum = 0
//    var maxSum = 0
//    for i in 0...(count-1){
//        var sum = 0
//        for j in 0...(count-1){
//
//            if i != j{
//                sum += arr[j]
//            }
//        }
//
//        if i == 0{
//            minSum = sum
//            maxSum = sum
//        }else if sum > maxSum{
//            maxSum = sum
//        }else if sum < minSum{
//            minSum = sum
//        }
//
//    }
//    print(minSum, maxSum)
//
//}
//
//minMaxSum(arr: [1, 2, 3, 4, 5])

//MARK: 3
//Given a time in -hour AM/PM format, convert it to military (24-hour) time.
//
//Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
//- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
//
//Example
//07:05:45PM
//
//Return '19:05:45'.


func timeConversion(s: String) -> String {
   
    let arrStr = Array(s)
    var hours = String(arrStr[0..<2])
    let minutes = String(arrStr[3..<5])
    let seconds = String(arrStr[6..<8])
    if arrStr[8].lowercased() == "a"{
        let hoursInt = Int(hours)
        if hoursInt == 12{
         hours = "00"
        }
        return "\(hours):\(minutes):\(seconds)"
    }else {
        let hoursInt = Int(hours)
        if hoursInt == 12{
         //
        }else {
            let hoursToBeReturned = hoursInt! + 12
            hours = String(hoursToBeReturned)
            
        }
        return "\(hours):\(minutes):\(seconds)"
    }
    
}

timeConversion(s: "12:40:22AM")
