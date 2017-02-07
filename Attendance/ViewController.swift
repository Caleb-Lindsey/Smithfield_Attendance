//
//  ViewController.swift
//  Attendance
//
//  Created by Caleb Lindsey on 6/10/16.
//  Copyright © 2016 KlubCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    //Declare Outlets
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var sanctuaryCount: UILabel!
    @IBOutlet weak var purpleRoom: UITextField!
    @IBOutlet weak var greenRoom: UITextField!
    @IBOutlet weak var toddlersRoom: UITextField!
    @IBOutlet weak var twoNthreeRoom: UITextField!
    @IBOutlet weak var nurseryRoom: UITextField!
    @IBOutlet weak var fusionRoom: UITextField!
    @IBOutlet weak var momentumRoom: UITextField!
    @IBOutlet weak var lobbyRoom: UITextField!
    @IBOutlet weak var balconyRoom: UITextField!
    @IBOutlet weak var AVRoom: UITextField!
    @IBOutlet weak var NLKsTeams: UITextField!
    
    
    //Declare Variables
    var pickerArray = ["Sunday 9:00am", "Sunday 11:00am", "Sunday 6:00pm", "Awakening Night", "Elevate", "TeamNight", "Service 1", "Service 2", "Service 3"]
    var sum = String()
    var itemSelected = String()
    var farLeft = Int()
    var left = Int()
    var center = Int()
    var right = Int()
    var farRight = Int()
    var standing = Int()
    
    var purpleStore : AnyObject = 0 as AnyObject
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Scroll View Span
        mainScrollView.contentSize.height = 1000
        
        //Picker View Load
        pickerView.delegate = self
        pickerView.dataSource = self
        
        //Initialize Picker View
        itemSelected = pickerArray[0]
        
        let theTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.scrollViewTapped(_:)))
        mainScrollView.addGestureRecognizer(theTap)

        //Dismiss Keyboard
        mainScrollView.keyboardDismissMode = .interactive
        mainScrollView.keyboardDismissMode = .onDrag
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //These functions are needed for the pickerView
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        itemSelected = pickerArray[row]
        
    }
    
    func scrollViewTapped(_ recognizer: UIGestureRecognizer) {
        mainScrollView.endEditing(true)
    }
    
    @IBAction func resetFields(_ sender: AnyObject) {
        
        let refreshAlert = UIAlertController(title: "Reset Fields", message: "Are you sure? All data will be lost.", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (action: UIAlertAction!) in
            //Handle Reset logic here
            self.sanctuaryCount.text = ""
            self.purpleRoom.text = ""
            self.greenRoom.text = ""
            self.toddlersRoom.text = ""
            self.twoNthreeRoom.text = ""
            self.nurseryRoom.text = ""
            self.fusionRoom.text = ""
            self.momentumRoom.text = ""
            self.NLKsTeams.text = ""
            self.lobbyRoom.text = ""
            self.balconyRoom.text = ""
            self.AVRoom.text = ""
            
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            //Do Nothing
        }))
        
        present(refreshAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func unwindToMenu(_ segue: UIStoryboardSegue) {
        
        var sourceView : SanctuaryViewcontroller
        
        if segue.identifier == "goToMain" {

            sourceView = segue.source as! SanctuaryViewcontroller
            
            //Validate text boxes
            if sourceView.farLeft.text == "" {
                sourceView.farLeft.text = "0"
            }
            if sourceView.left.text == "" {
                sourceView.left.text = "0"
            }
            if sourceView.center.text == "" {
                sourceView.center.text = "0"
            }
            if sourceView.right.text == "" {
                sourceView.right.text = "0"
            }
            if sourceView.farRight.text == "" {
                sourceView.farRight.text = "0"
            }
            if sourceView.standing.text == "" {
                sourceView.standing.text = "0"
            }

            //Assign values to local variables
            farLeft = Int(sourceView.farLeft.text!)!
            left = Int(sourceView.left.text!)!
            center = Int(sourceView.center.text!)!
            right = Int(sourceView.right.text!)!
            farRight = Int(sourceView.farRight.text!)!
            standing = Int(sourceView.standing.text!)!
            
            //Sum text boxes
            sum = String(farLeft + left + center + right + farRight + standing)
            
            sanctuaryCount.text = sum
            
        }
        
    }
    
    //Prepare data to be sent into buckets for other view controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        var destDone : doneViewController
        
        //Distinguish between view controllers
        if segue.identifier == "sumSegue" {
        }
        
        if segue.identifier == "doneSegue" {
            destDone = segue.destination as! doneViewController
            
            //Validate text boxes
            if purpleRoom.text == "" {
                destDone.receivedPurple = "0"
            }
            else {
                destDone.receivedPurple = purpleRoom.text!
            }
            if greenRoom.text == "" {
                destDone.receivedGreen = "0"
            }
            else {
                destDone.receivedGreen = greenRoom.text!
            }
            if toddlersRoom.text == "" {
                destDone.receivedToddlers = "0"
            }
            else {
                destDone.receivedToddlers = toddlersRoom.text!
            }
            if twoNthreeRoom.text == "" {
                destDone.receivedTwoNthree = "0"
            }
            else {
                destDone.receivedTwoNthree = twoNthreeRoom.text!
            }
            if nurseryRoom.text == "" {
                destDone.receivedNursery = "0"
            }
            else {
                destDone.receivedNursery = nurseryRoom.text!
            }
            if fusionRoom.text == "" {
                destDone.receivedFusion = "0"
            }
            else {
                destDone.receivedFusion = fusionRoom.text!
            }
            if momentumRoom.text == "" {
                destDone.receivedMomentum = "0"
            }
            else {
                destDone.receivedMomentum = momentumRoom.text!
            }
            if lobbyRoom.text == "" {
                destDone.receivedLobby = "0"
            }
            else {
                destDone.receivedLobby = lobbyRoom.text!
            }
            if balconyRoom.text == "" {
                destDone.receivedBalcony = "0"
            }
            else {
                destDone.receivedBalcony = balconyRoom.text!
            }
            if AVRoom.text == "" {
                destDone.receivedAVRoom = "0"
            }
            else {
                destDone.receivedAVRoom = AVRoom.text!
            }
            if NLKsTeams.text == "" {
                destDone.receivedNLKsTeams = "0"
            }
            else {
                destDone.receivedNLKsTeams = NLKsTeams.text!
            }
            if sanctuaryCount.text == "" {
                destDone.receivedSanctuary = "0"
            }
            else {
                destDone.receivedSanctuary = sanctuaryCount.text!
            }
            
            //More when Done is pressed
            destDone.receivedServiceType = itemSelected
        }
        
    }

}



















