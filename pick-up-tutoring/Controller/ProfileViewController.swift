//
//  ProfileViewController.swift
//  pick-up-tutoring
//
//  Created by Anna Gao on 11/15/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //All invariant, can't be changed by user
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userYear: UILabel!
    @IBOutlet weak var userMajor: UILabel!
    @IBOutlet weak var userCoursesTaken: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userLocation: UILabel!
    @IBOutlet weak var userPassword: UILabel!
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
