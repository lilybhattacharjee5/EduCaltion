//
//  Student.swift
//  pick-up-tutoring
//
//  Created by Lily Bhattacharjee on 11/14/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import Foundation

class Student: Profile {
    
    // student attributes
    var classesTaking: [String]!
    var timesAvailable: [[String]]!
    var preferredLocations: [String]!
    var classForTutoring: String!
    
    // initialize student profile
    init(firstName: String, lastName: String, email: String, phoneNum: String, preferredContact: String, bio: String, classesTaking: [String]) {
        super.init(firstName: firstName, lastName: lastName, email: email, phoneNum: phoneNum, preferredContact: preferredContact, bio: bio)
        self.classesTaking = classesTaking
    }
    
    // set class for tutoring
    func setClassForTutoring(classForTutoring: String) {
        self.classForTutoring = classForTutoring
    }
}
