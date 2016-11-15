//
//  TipCalculatorBrain.swift
//  TipperApplication
//  Group Members : Jaimin Patel:ID = 991378070, Ken Suong:ID = 991380633
//  Created by Xcode User on 2016-10-29.
//  Copyright © 2016 HaRambe. All rights reserved.
//

import Foundation
class TipCalculator{
    var tax = 1.13
    var customerTip:Double!
    var customerTipTemp:String!
    var customerTotal:Double!
    
    init(){
        customerTip = nil
        customerTotal = nil
        customerTipTemp = ""
    }
    func calculateCustomTip(custTotal:Double, customerBill:Double) -> String{
        customerTip = customerBill * custTotal/100
        customerTipTemp = NSString(format: "%.2f", customerTip) as String
        return "\(customerTipTemp)"
    }
    func calculateCustomTotal(custTip:Double , custTotal:Double) -> String {
        customerTotal = custTotal + (custTotal*custTip/100)
        customerTipTemp = NSString(format: "%.2f", customerTotal) as String
        return "\(customerTipTemp)"
    }

    
}