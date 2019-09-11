//
//  ViewController.swift
//  BookBunker
//
//  Created by Treinamento on 9/10/19.
//  Copyright © 2019 julioCesarASantos. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkoutButton(_ sender: Any) {
        
        SVProgressHUD.show()
        
        // Login the user
//        Auth.auth().signIn(withEmail: usernameTextField.text!, password: passwordTextField.text!) { (user, error) in
//            if error != nil {
//                //Pop up to alert some problem with login
//                SVProgressHUD.dismiss()
//                let alertContr = UIAlertController.init(title: "Sorry" , message: "There was a problem to login.", preferredStyle: .alert)
//                let alert = UIAlertAction.init(title: "Ok", style: .cancel, handler: .none)
//                alertContr.addAction(alert)
//                self.present(alertContr, animated: true, completion: nil)
//
//
//            } else {
//                // Login sucessful
//                SVProgressHUD.dismiss()
//                print("*************************")
//                print("Login sucessful!")
//                print("*************************")
                self.performSegue(withIdentifier: "loginGoToMain", sender: self)
//            }
//        }
    }
    
}

