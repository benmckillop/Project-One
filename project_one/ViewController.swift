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
    @IBOutlet weak var costPerMileText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hideText()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func clearButton(_ sender: Any) {
        if milesSinceLastFillField.text != "" {
            hideText()
        }
        if litersFilledUpField.text != "" {
            hideText()
        }
        if costPerLiterField.text != "" {
            hideText()
        }
    }
    
    @IBAction func submitButton(_ sender: Any) {
        let litersDbl = (litersFilledUpField.text! as NSString).doubleValue
        let milesDbl = (milesSinceLastFillField.text! as NSString).doubleValue
        let costDbl = (costPerLiterField.text! as NSString).doubleValue
        let gallons = (litersDbl / 4.546)
        let mpg = milesDbl / gallons
        let finalmpg = String(format:"%.1f", mpg)
        let costOfFill = ((costDbl * litersDbl) / milesDbl)
        let finalCostOfFill = String(format:"%.2f", costOfFill)

        costPerMileText.text = finalCostOfFill + "p"
        mpgText.text = finalmpg
        
        self.view.endEditing(true)
    }
    
    func hideText(){
        milesSinceLastFillField.text = ""
        litersFilledUpField.text = ""
        costPerLiterField.text = ""
        mpgText.text = "-"
        costPerMileText.text = "-"
    }
}

