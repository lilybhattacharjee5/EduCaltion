//
//  SignUpViewController.swift
//  pick-up-tutoring
//
//  Created by Anna Gao on 11/15/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var year: [String] = [String]()
    var courses: [String] = [String]()
    var locations: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.userYear.delegate = self
        self.userYear.dataSource = self
        self.userCoursesTaken.delegate = self
        self.userCoursesTaken.dataSource = self
        self.userLocation.delegate = self
        self.userLocation.dataSource = self
        
        year = ["High School", "Freshman", "Sophomore", "Junior", "Senior", "Graduate"]
        locations = ["Northside", "Southside", "Downtown"]
    }
    
    @IBOutlet weak var userImage: UIImageView!
    @IBAction func userName(_ sender: Any) {
    }
    @IBAction func userEmail(_ sender: Any) {
    }
    @IBOutlet weak var userYear: UIPickerView!
    @IBAction func userMajor(_ sender: Any) {
    }
    @IBOutlet weak var userCoursesTaken: UIPickerView!
    @IBAction func userPhoneNumber(_ sender: Any) {
    }
    @IBOutlet weak var userLocation: UIPickerView!
    @IBAction func userPassword(_ sender: Any) {
    }
    @IBAction func doneButton(_ sender: Any) {
    }
    
    //Use tags to distinguish between the two picker controllers in the view controller
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count //change
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]//change
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
