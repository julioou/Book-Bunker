//
//  MainViewController.swift
//  BookBunker
//
//  Created by Treinamento on 9/11/19.
//  Copyright © 2019 julioCesarASantos. All rights reserved.
//

import UIKit
import SVProgressHUD

class MainViewController: UIViewController {

    let categories: [String] = ["ler","lendo","terminado"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.dismiss()

    }
    
    @IBAction func categorieButton(_ sender: UIButton) {
       
        SVProgressHUD.show()
        
        if let category = sender.currentTitle {
            if category == "Ler" {
                performSegue(withIdentifier: "goToList", sender: self)
            }
            else if category == "Lendo" {
                performSegue(withIdentifier: "goToList", sender: self)
            }
            else if category == "Terminado" {
                performSegue(withIdentifier: "goToList", sender: self)
            }
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as! TodoListViewController
//
//        if let indexPath = tableView.indexPathForSelectedRow {
//            destinationVC.selectedCategory = categories?[indexPath.row]
//        }
//    }

}
