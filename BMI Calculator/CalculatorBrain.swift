//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adelya Nurusheva on 2/15/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
import SwiftUI


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
    
        let bmiTo1DecimalPlace = String(format: "%.1", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
    
    func getAdvice() -> String {
         bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
         bmi?.color ?? UIColor.white
    }

   mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / (height*height)
       
       if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
       } else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1) )
       } else {
           bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
       }
     
    }
}
