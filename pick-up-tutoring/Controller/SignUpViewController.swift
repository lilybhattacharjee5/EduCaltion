//
//  SignUpViewController.swift
//  pick-up-tutoring
//
//  Created by Sayan Chatterjee on 11/14/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    var email = ""
    var username = ""
    var password = ""
    
    @IBAction func signUpButton(_ sender: Any) {
        guard let emailText = emailTF.text else { return }
        guard let passwordText = passwordTF.text else { return }
        guard let usernameText = usernameTF.text else { return }
        
        if emailText == "" || passwordText == "" || usernameText == "" {
            let alertController = UIAlertController(title: "Form Error.", message: "Please fill in form completely.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: emailText, password: passwordText) { (user, error) in
                if error == nil {
                    let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                    changeRequest?.displayName = usernameText
                    changeRequest?.commitChanges { (error) in
                        if error == nil  {
                            let accountCreatedController = UIAlertController(title: "Success.", message: "The account has been created.", preferredStyle: .alert)
                            let successAction = UIAlertAction(title: "OK.", style: .default) { (action:UIAlertAction) in
                                self.performSegue(withIdentifier: "signUpToLogin", sender: self)
                            }
                            accountCreatedController.addAction(successAction)
                            self.present(accountCreatedController, animated: true, completion: nil)
                        }
                    }
                } else {
                    let alertController = UIAlertController(title: "Sign Up Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTF.delegate = self
        self.emailTF.delegate = self
        self.passwordTF.delegate = self
        // Do any additional setup after loading the view.
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
        } else if textField == self.passwordTF {
            if textField.text != nil {
                self.password = textField.text!
            }
        } else {
            if textField.text != nil {
                self.email = textField.text!
            }
        }
    }
}
