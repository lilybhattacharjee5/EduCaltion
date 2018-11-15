//
//  Profile.swift
//  pick-up-tutoring
//
//  Created by Lily Bhattacharjee on 11/14/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import Foundation

class Profile {
    
    // properties intrinsic to any profile -- tutor or student
    let firstName: String!
    let lastName: String!
    var email: String!
    var phoneNum: String!
    var preferredContact: String!
    var bio: String!
    
    // create a new profile
    init(firstName: String, lastName: String, email: String, phoneNum: String, preferredContact: String, bio: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phoneNum = phoneNum
        self.preferredContact = preferredContact
        self.bio = bio
    }
    
    // edit profile elements (except for first & last name)
    func setEmail(email: String) {
        self.email = email
    }
    
    func setPhoneNum(phoneNum: String) {
        self.phoneNum = phoneNum
    }
    
    func setPreferredContact(preferredContact: String) {
        self.preferredContact = preferredContact
    }
    
    func setBio(bio: String) {
        self.bio = bio
    }
}
