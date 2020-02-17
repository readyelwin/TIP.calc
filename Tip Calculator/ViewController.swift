//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Elwin Ready on 2/1/20.
//  Copyright © 2020 Elwin Ready. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var Tiplabel: UITextField!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func CalculateTip(_ sender: Any) {
       
        let tipPercentage = [0.1,0.18,0.2]
        
        let bill = Double(BillField.text!) ?? 0
        
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        
        Tiplabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
}

