//
//  NewRequestViewController.swift
//  pick-up-tutoring
//
//  Created by Anna Gao on 11/15/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit

class NewRequestViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var courses: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //Connect the data
        self.userCourse.delegate = self
        self.userCourse.dataSource = self
        
        //insert data on the courses here
    }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    
    //textfields where user can type in the required information
    @IBOutlet weak var userCourse: UIPickerView!
    @IBAction func userTopics(_ sender: Any) {
    }
    @IBAction func userAvail(_ sender: Any) {
    }
    @IBAction func createRequestButton(_ sender: Any) {
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
