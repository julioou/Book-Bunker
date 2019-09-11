//
//  RegisterViewController.swift
//  BookBunker
//
//  Created by Treinamento on 9/11/19.
//  Copyright © 2019 julioCesarASantos. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    @IBOutlet private var userTextField: UITextField!
    @IBOutlet private var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func registerPressed(_ sender: Any) {
        
         SVProgressHUD.show()
        
//        Auth.auth().signIn(withCustomToken: userTextField.text!) { (user, error) in
//            performSegue(withIdentifier: "registerGoToMain", sender: <#T##Any?#>)
//        }
        
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: self.userTextField.text!, password: self.passTextField.text!) { (user, error) in
            if error != nil { // error not null
                print(error!)
                SVProgressHUD.dismiss()
                let alertContr = UIAlertController.init(title: "Sorry" , message: "There was a problem to register.", preferredStyle: .alert)
                let alert = UIAlertAction.init(title: "Ok", style: .cancel, handler: .none)
                alertContr.addAction(alert)
                self.present(alertContr, animated: true, completion: nil)
            } else {
                //Sucess
                SVProgressHUD.dismiss()
                print("***********************")
                print("Resgistration sucessful")
                print("***********************")
                
                self.performSegue(withIdentifier: "registerGoToMain", sender: self)
            }
        }
    }
    
}
