//
//  ViewController.swift
//  TipperApplication
//  Group Members : Jaimin Patel:ID = 991378070, Ken Suong:ID = 991380633
//  Created by Xcode User on 2016-10-28.
//  Copyright © 2016 HaRambe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var billTotalTextField: UITextField!
    @IBOutlet var tenPerTip: UILabel!
    @IBOutlet var tenPerTotal: UILabel!
    @IBOutlet var fifteenPerTip:UILabel!
    @IBOutlet var fifteenPerTotal: UILabel!
    @IBOutlet var twentyPerTip: UILabel!
    @IBOutlet var twentyPerTotal: UILabel!
    @IBOutlet var customPercent: UILabel!
    @IBOutlet var customePerSlider: UISlider!
    @IBOutlet var customPerTip: UILabel!
    @IBOutlet var customPerTotal: UILabel!
    var tipCalBrain: TipCalculator!
    init(_ coder: NSCoder? = nil) {
        tipCalBrain = TipCalculator()
        if let coder = coder{
            super.init(coder: coder)!
        }
        else{
            super.init(nibName: nil, bundle:nil)
        }
    }
    required convenience init(coder aDecoder: NSCoder){
        self.init(aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func customPerSliderValueChange(sender: UISlider) {
        let currentValue = Int(sender.value)
        customPercent.text = "\(currentValue)"
        let customerTipValue = Double(billTotalTextField.text!)
        if(billTotalTextField.text == ""){
            let customerBillTotal = 0.0
        }
        else{
            let customerTipValue = Double(billTotalTextField.text!)
        }
        customPerTip.text = "\(tipCalBrain.calculateCustomTip(Double(currentValue), customerBill:customerTipValue!))"
        
        customPerTotal.text = "\(tipCalBrain.calculateCustomTotal(Double(currentValue), custTotal: customerTipValue!))"
    }
    
    @IBAction func tipValueChanged(sender: UITextField) {
        let customerBillTotal:Double
        //let customerBillTotal = Double(billTotalTextField.text)
        if(billTotalTextField.text == ""){
             customerBillTotal = 0.0
        }
        else{
             customerBillTotal = Double(billTotalTextField.text!)!
        }
        tenPerTip.text = "\(tipCalBrain.calculateCustomTip(Double(10), customerBill: customerBillTotal))"
        tenPerTotal.text = "\(tipCalBrain.calculateCustomTotal(Double(10), custTotal: customerBillTotal))"
        
        fifteenPerTip.text = "\(tipCalBrain.calculateCustomTip(Double(15), customerBill: customerBillTotal))"
        fifteenPerTotal.text = "\(tipCalBrain.calculateCustomTotal(Double(15), custTotal: customerBillTotal))"
        
        twentyPerTip.text = "\(tipCalBrain.calculateCustomTip(Double(20), customerBill: customerBillTotal))"
        twentyPerTotal.text = "\(tipCalBrain.calculateCustomTotal(Double(20), custTotal: customerBillTotal))"

        
        
    }
    


}

