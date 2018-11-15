//
//  Tutor.swift
//  pick-up-tutoring
//
//  Created by Lily Bhattacharjee on 11/14/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import Foundation

class Tutor: Profile {
    
    // tutor attributes
    var classesTaken: [String]!
    var verifiedClassesTaken: [String]!
    var preferredClasses: [String]!
    var timesAvailable: [[String]]!
    var preferredLocations: [String]!
    
    // tutor initializer
    init(firstName: String, lastName: String, email: String, phoneNum: String, preferredContact: String, bio: String, classesTaken: [String]) {
        super.init(firstName: firstName, lastName: lastName, email: email, phoneNum: phoneNum, preferredContact: preferredContact, bio: bio)
        self.classesTaken = classesTaken
    }
    
    func setAvailableTimes(timesAvailable: [[String]]) {
        self.timesAvailable = timesAvailable
    }
    
    func setPreferredLocations(preferredLocations: [String]) {
        self.preferredLocations = preferredLocations
    }
}
