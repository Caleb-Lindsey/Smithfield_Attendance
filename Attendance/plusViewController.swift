//
//  plusViewController.swift
//  Smithfield Attendance
//
//  Created by Caleb Lindsey on 6/15/16.
//  Copyright © 2016 KlubCo. All rights reserved.
//

import UIKit
import Foundation

class plusViewController : UIViewController {
    
    //Declare Outlets
    @IBOutlet weak var tappedNumber: UILabel!
    
    //Declare Variables
    var displayedNumber = Int()
    var FarLeftNum = Int()
    var leftNum = Int()
    var centerNum = Int()
    var rightNum = Int()
    var farRightNum = Int()
    var standingNum = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tappedNumber.text = "0"
        
    }
    
    
}

