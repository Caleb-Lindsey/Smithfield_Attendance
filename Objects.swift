//
//  Objects.swift
//  Smithfield Attendance
//
//  Created by Caleb Lindsey on 5/19/17.
//  Copyright © 2017 KlubCo. All rights reserved.
//

import UIKit

class ServiceObject {
    
    //Variables
    var title : String = String()
    var rooms : [String] = [String]()
    
    init(Title : String, Rooms: [String]) {
        self.title = Title
        self.rooms = Rooms
    }
    
    
}
