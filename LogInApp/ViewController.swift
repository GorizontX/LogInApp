//
//  ViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 10.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func forgotNameTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "It's so cute 🥰", message: "You forgot your name. Check your passport 😉", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(action)
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "That is not cute 😐", message: "Your password is 13579, please remember it.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(action)
        self.present(alertController, animated: true)
        
    }
    
    
    
}

