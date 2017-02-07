//
//  SanctuaryViewController.swift
//  Attendance
//
//  Created by Caleb Lindsey on 6/10/16.
//  Copyright © 2016 KlubCo. All rights reserved.
//

import Foundation
import UIKit

class SanctuaryViewcontroller : UIViewController {
    
    //Declare Outlets
    @IBOutlet weak var farLeft: UITextField!
    @IBOutlet weak var left: UITextField!
    @IBOutlet weak var center: UITextField!
    @IBOutlet weak var right: UITextField!
    @IBOutlet weak var farRight: UITextField!
    @IBOutlet weak var standing: UITextField!
    @IBOutlet weak var plusLabel: UILabel!
    
    //Declare Variables
    var numLabel = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusLabel.text = "0"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func plusTapped(_ sender: AnyObject) {
        
        //Increment Label
        numLabel = Int(plusLabel.text!)!
        numLabel += 1
        plusLabel.text = String(numLabel)
        
    }
    
    @IBAction func minusTapped(_ sender: AnyObject) {
        
        //Decrement Label
        numLabel = Int(plusLabel.text!)!
        
        if Int(plusLabel.text!)! > 0 {
            
            numLabel = numLabel - 1
            plusLabel.text = String(numLabel)
            
        }
        
    }
    
    
    @IBAction func sectionTapped(_ sender: AnyObject) {
        
        if sender.tag == 0 {
            
            farLeft.text = plusLabel.text
            
        }
        
        if sender.tag == 1 {
            
            left.text = plusLabel.text
            
        }
        
        if sender.tag == 2 {
            
            center.text = plusLabel.text
            
        }
        
        if sender.tag == 3 {
            
            right.text = plusLabel.text
            
        }
        
        if sender.tag == 4 {
            
            farRight.text = plusLabel.text
            
        }
        
        if sender.tag == 5 {
            
            standing.text = plusLabel.text
            
        }
        
    }
    
    
    @IBAction func resetTapped(_ sender: AnyObject) {
        
        plusLabel.text = "0"
        
    }
    
}










