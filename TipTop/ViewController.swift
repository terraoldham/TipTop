//
//  ViewController.swift
//  TipTop
//
//  Created by Terra Oldham on 8/13/17.
//  Copyright © 2017 HearsaySocial. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var calculationView: UIView!
    @IBOutlet weak var additionImage: UIImageView!
    @IBOutlet weak var equalsImage: UIImageView!
    @IBOutlet weak var groupSizeLabel: UILabel!
    @IBOutlet weak var groupControl: UIStepper!
    @IBAction func groupControlChanged(_ sender: UIStepper) {
        groupSizeLabel.text = Int(sender.value).description
        print(groupSizeLabel)
        calculateTip((Any).self)
    }

    
    let defaults = UserDefaults.standard
    private let bill = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        calculationView.center.y  += view.bounds.height
        UIView.animate(withDuration: 0.7, delay: 1.0, options: .curveEaseOut, animations: {
            self.calculationView.center.y -= self.view.bounds.height
        }, completion: { finished in
            print("Animation success")
        })
        groupControl.value = 1
        calculateTip((Any).self)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let defaultTipIndex = defaults.object(forKey: "defaultTipIndex") {
            tipControl.selectedSegmentIndex = defaultTipIndex as! Int
        }
        calculateTip((Any).self)

    }

    @IBAction func calculateTip(_ sender: Any) {
        print("hello")
        print(tipControl.selectedSegmentIndex)
        
        let tipPercentages = [0.18, 0.2, 0.22]
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let individualTotal = total / groupControl.value
        groupControl.wraps = true
        groupControl.autorepeat = true
        groupControl.maximumValue = 10
        groupControl.minimumValue = 1
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", individualTotal)

    }
    
}

