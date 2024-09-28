//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nathaniel Clay on 9/3/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float,_ weight: Float) {
        let bmiValue = (weight / pow(height, 2)) * 703
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) )
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) )
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1) )
        }
    }
    
    func getBMIValue() -> String {
        let bmiFormat = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormat
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Unknown BMI"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }
}
