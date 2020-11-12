//
//  ViewController.swift
//  Calculytor1
//
//  Created by Mars-Droid on 11.11.2020.
//

import UIKit

class ViewController: UIViewController {

    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // Функция нажатия кнопок}
    
    @IBAction func inpuntNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }else{
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
        
    }
        // функция обнуления
        
    @IBAction func clerAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    
    
        // функция кнопок + - / *
       
    
    @IBAction func inpuntOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    
    @IBAction func resultAction(_ sender: UIButton) {
        var result = 0.0
        switch operand {
        case "/":
            result = Double(numberOne)! /
            Double(numberTwo)!
        case "*":
            result = Double(numberOne)! *
                Double(numberTwo)!
        case "-":
            result = Double(numberOne)! -
                Double(numberTwo)!
        case  "+":
            result = Double(numberOne)! +
                Double(numberTwo)!
        default:
            break
            
        }
        if result.truncatingRemainder(dividingBy: 1.0) ==
            00{
            resultLabel.text = String(Int(result))
        }else{
            resultLabel.text = String(result)
        }


    }
}
