//
//  ViewController.swift
//  Age of Laika
//
//  Created by Henry Pham on 4/4/15.
//  Copyright (c) 2015 Henry Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanTextField: UITextField!
    
    @IBOutlet weak var dogLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: UIButton) {
        var doubleHumanYears = (humanTextField.text as NSString).doubleValue
        dogLabel.hidden = false
        if doubleHumanYears <= 2 {
            dogLabel.text = "\(doubleHumanYears * 10.5)"
        }
        else {
            var firstTwoYears = doubleHumanYears - 2.0
            dogLabel.text = "\(firstTwoYears * 4.0 + 21.0)"
        }
   
    }

}

