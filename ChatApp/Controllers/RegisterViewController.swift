//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by Eduard Magerusan on 22.08.22.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorText: UILabel!
    
    @IBAction func registeredPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.errorText.text = e.localizedDescription
                    print(e.localizedDescription)
                } else {
                    //Navigate to the ChatViewController
                    self.errorText.text = ""
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
        
    }
    

}
