//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by TTP-Loaner on 8/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBmiVal() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    mutating func calculateBmi(_ weight: Float, _ height: Float) {
        let bmiVal = weight / pow(height, 2)
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat more pizza!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }  else if bmiVal < 24.5{
            bmi = BMI(value: bmiVal, advice: "Good job, you're fit!", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, advice: "More veggies, less pizza!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Keep doing your thang!"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}
