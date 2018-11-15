//
//  LoginViewController.swift
//  pick-up-tutoring
//
//  Created by Sayan Chatterjee on 11/14/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController, UITextFieldDelegate {

    var username = ""
    var password = ""
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        guard let userText = usernameTF.text else { return }
        guard let passText = passwordTF.text else { return }
        
        if userText == "" || passText == "" {
            let alertController = UIAlertController(title: "Login Error", message: "Please enter a username and password.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else {
            Auth.auth().signIn(withEmail: userText, password: passText) { (user, error) in
                if error != nil {
                    let alertController = UIAlertController(title: "Log In Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                } else {
                    self.performSegue(withIdentifier: "loginToMain", sender: self)
                }
            }
        }
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        performSegue(withIdentifier: "loginToSignUp", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTF.delegate = self
        self.passwordTF.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        /*Auth.auth().addStateDidChangeListener { (auth, user) in
            if user != nil {
                self.performSegue(withIdentifier: "loginToMain", sender: self)
            }
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.usernameTF {
            if textField.text != nil {
                self.username = textField.text!
            }
        } else {
            if textField.text != nil {
                self.password = textField.text!
            }
        }
    }
    

}
