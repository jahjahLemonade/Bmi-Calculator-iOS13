//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    var cal = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = "\(round(sender.value * 100) / 100)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        cal.calculateBmi(weightSlider.value,heightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiVal = cal.getBmiVal()
            destinationVC.advice = cal.getAdvice()
            destinationVC.background = cal.getColor()
        }
    }
}

