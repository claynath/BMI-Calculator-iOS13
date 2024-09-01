//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let selectedHeight = String(format: "%.0f", sender.value)
        heightLabel.text = "\(selectedHeight)in"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let selectedWeight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(selectedWeight)lbs"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = (weight / pow(height, 2)) * 703
        print(BMI)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", BMI)
        self.present(secondVC, animated: true, completion: nil)
    }
}

