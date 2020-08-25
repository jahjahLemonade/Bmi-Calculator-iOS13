//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by TTP-Loaner on 8/23/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    var bmiVal: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        results.text = bmiVal

    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
