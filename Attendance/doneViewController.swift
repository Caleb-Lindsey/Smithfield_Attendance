//
//  doneViewController.swift
//  Attendance
//
//  Created by Caleb Lindsey on 6/10/16.
//  Copyright © 2016 KlubCo. All rights reserved.
//

import Foundation
import UIKit

class doneViewController : UIViewController {
    
    //Declare Outlets
    @IBOutlet weak var printPurple: UILabel!
    @IBOutlet weak var printGreen: UILabel!
    @IBOutlet weak var printToddlers: UILabel!
    @IBOutlet weak var printTwoNthree: UILabel!
    @IBOutlet weak var printNursery: UILabel!
    @IBOutlet weak var printFusion: UILabel!
    @IBOutlet weak var printMomentum: UILabel!
    @IBOutlet weak var printLobby: UILabel!
    @IBOutlet weak var printBalcony: UILabel!
    @IBOutlet weak var printAVRoom: UILabel!
    @IBOutlet weak var printNLKsTeams: UILabel!
    @IBOutlet weak var printSanctuary: UILabel!
    @IBOutlet weak var printNurseryWing: UILabel!
    @IBOutlet weak var printChildrensChurch: UILabel!
    @IBOutlet weak var printTotal: UILabel!
    @IBOutlet weak var printServiceType: UILabel!
    @IBOutlet weak var printDate: UILabel!
    
    //Declare Variables
    var nurserySum = Int()
    var childrensChurchSum = Int()
    var total = Int()
    
    //Declare Bucket Variables
    var receivedPurple = String()
    var receivedGreen = String()
    var receivedToddlers = String()
    var receivedTwoNthree = String()
    var receivedNursery = String()
    var receivedFusion = String()
    var receivedMomentum = String()
    var receivedLobby = String()
    var receivedAVRoom = String()
    var receivedBalcony = String()
    var receivedSanctuary = String()
    var receivedNLKsTeams = String()
    var receivedServiceType = String()
    
    //Anything that needs to happen when the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set Service Type
        printServiceType.text = receivedServiceType
        
        //Set Date
        printDate.text = DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.none)
        
        //Assign values to labels from Buckets
        printPurple.text = receivedPurple
        printGreen.text = receivedGreen
        printToddlers.text = receivedToddlers
        printTwoNthree.text = receivedTwoNthree
        printNursery.text = receivedNursery
        printFusion.text = receivedFusion
        printMomentum.text = receivedMomentum
        printNLKsTeams.text = receivedNLKsTeams
        printLobby.text = receivedLobby
        printBalcony.text = receivedBalcony
        printAVRoom.text = receivedAVRoom
        printSanctuary.text = receivedSanctuary

        
        //Calculate Totals
        nurserySum = Int(printPurple.text!)! + Int(printGreen.text!)! + Int(printNursery.text!)! + Int(printToddlers.text!)! + Int(printTwoNthree.text!)!
        
        childrensChurchSum = Int(printFusion.text!)! + Int(printMomentum.text!)!
        
        total = nurserySum + childrensChurchSum + Int(printNLKsTeams.text!)! + Int(printLobby.text!)! + Int(printBalcony.text!)! + Int(printAVRoom.text!)! + Int(printSanctuary.text!)!
    
        //Assign Totals
        printNurseryWing.text = String(nurserySum)
        printChildrensChurch.text = String(childrensChurchSum)
        printTotal.text = String(total)
    }
    
    
    
    
}




















