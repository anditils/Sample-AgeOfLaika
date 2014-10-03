//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Adrian Tillich on 03.10.14.
//  Copyright (c) 2014 Adrian Tillich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertHumanToDogYearsButtonPressed(sender: UIButton) {
        let conversionNumber = 7
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "Doggy is about \(humanYearsTextField.text.toInt()! * conversionNumber) old (in Human Years)"
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertHumanToRealDogYearsButtonPressed(sender: UIButton) {
        let doubleFromTextField = Double((humanYearsTextField.text as NSString).doubleValue)
        var dogYearsResult:Double
        
        if doubleFromTextField <= 2.0 {
            dogYearsResult = doubleFromTextField * 10.5
        } else {
            dogYearsResult = 2 * 10.5 // the first two years
            dogYearsResult += (doubleFromTextField - 2) * 4
        }
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "Doggy is really \(dogYearsResult) old (in Human Years)"
        humanYearsTextField.resignFirstResponder()
    }
}

