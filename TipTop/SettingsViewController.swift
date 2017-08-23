//
//  SettingsViewController.swift
//  TipTop
//
//  Created by Terra Oldham on 8/15/17.
//  Copyright © 2017 HearsaySocial. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    let defaults = UserDefaults.standard
    let tipPercentages = [0.18, 0.2, 0.22]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func setDefaultTipPercentage(_ sender: Any) {
        defaults.set(defaultTip.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
    }

    override func viewDidAppear(_ animated: Bool) {
        if let defaultTipIndex = defaults.object(forKey: "defaultTipIndex") {
            defaultTip.selectedSegmentIndex = defaultTipIndex as! Int
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
