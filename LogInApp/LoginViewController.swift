//
//  ViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 10.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "Andrey"
    private let password = "13579"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.helloLabel = "Welcome, \(userName)"
    }
    
    // MARK: - ID Actions
    
    @IBAction func logInTapped(_ sender: Any) {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    // MARK: - Alert Controllers
    
    
    @IBAction func forgotButtonTappef(_ sender: UIButton) {
        sender.tag == 0
        ? setUpAlertController(titel: "It's so cute 🥰", message: "You forgot your name. You are \(userName)")
        : setUpAlertController(titel: "That is not cute 😐", message: "Your password is \(password), please remember it.")
    }
    
    
    
    // MARK: - Privat Methods
    
    private func setUpAlertController (titel: String, message: String) {
        let alertController = UIAlertController(title: titel, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
    
}

