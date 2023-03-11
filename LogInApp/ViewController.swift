//
//  ViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 10.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - ID Actions
    
    @IBAction func logInTapped(_ sender: Any) {
    }
    
    
    // MARK: - Alert Controllers
    
    
    @IBAction func forgotButtonTappef(_ sender: UIButton) {
        sender.tag == 0
        ? setUpAlertController(titel: "It's so cute 🥰", message: "You forgot your name. You are Andrey")
        : setUpAlertController(titel: "That is not cute 😐", message: "Your password is 13579, please remember it.")
    }
    
    
    
    // MARK: - Privat Methods
    
    private func setUpAlertController (titel: String, message: String) {
        let alertController = UIAlertController(title: titel, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
    
}

