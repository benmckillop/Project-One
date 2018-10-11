//
//  ViewController.swift
//  project_one
//
//  Created by Ben McKillop on 11/10/2018.
//  Copyright © 2018 Ben McKillop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var milesSinceLastFillField: UITextField!
    @IBOutlet weak var litersFilledUpField: UITextField!
    @IBOutlet weak var costPerLiterField: UITextField!
    @IBOutlet weak var mpgText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    @IBAction func submitButton(_ sender: Any) {
        var miles = milesSinceLastFillField.text
        var liters = litersFilledUpField.text
        var cost = costPerLiterField.text
        
        let litersDbl = (litersFilledUpField.text! as NSString).doubleValue
        
        let milesDbl = (milesSinceLastFillField.text! as NSString).doubleValue

        
        let gallons = (litersDbl / 4.546)
        let mpg = milesDbl / gallons
        
        let finalmpg = String(mpg)

        
        mpgText.text = finalmpg
        
    }
}

