//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by TTP-Loaner on 8/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiVal = "0.0"
    
    func getBmiVal() -> String {
        return bmiVal
    }
    mutating func calculateBmi(_ weight: Double, _ height: Double) {
        let bmi = weight / pow(height, 2)
        bmiVal = String(format: "%.1f", bmi)
    }
}
