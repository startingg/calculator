//
//  calLv2.swift
//  calculator lv2
//
//  Created by t2023-m0064 on 2023/07/21.
//

import Foundation

// 계산 함수 정의
func calculate(num1: Double, num2: Double, operatorSymbol: String) -> Double {
    var result: Double = 0.0
    
    switch operatorSymbol {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        result = num1 / num2
    case "%":
        result = num1.truncatingRemainder(dividingBy: num2)
    
        
        
    default:
        print("지원하지 않는 연산자입니다.")
    }
    
    return result
}

// 입력 받기
print("첫 번째 숫자를 입력하세요: ")
let number1 = Double(readLine() ?? "") ?? 0.0

print("두 번째 숫자를 입력하세요: ")
let number2 = Double(readLine() ?? "") ?? 0.0

print("연산자를 입력하세요 (+, -, *, /, %):")
let operatorSymbol = readLine() ?? ""




// 계산 결과 출력
let result = calculate(num1: number1, num2: number2, operatorSymbol: operatorSymbol)
print("결과: \(result)")

