//
//  ViewController.swift
//  Miracel Pill
//
//  Created by Bryan  Miller on 9/13/16.
//  Copyright © 2016 swift 3. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    
    
    @IBOutlet weak var statePickerButton: UIButton!
    
    
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
        //column in spreadsheet
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
   
        /// how many rows in each component
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states [row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
}

