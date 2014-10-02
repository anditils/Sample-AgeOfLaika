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

}

