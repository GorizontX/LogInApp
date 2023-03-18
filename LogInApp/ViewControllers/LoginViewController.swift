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
    
    private let user = User.getUser()
    
    
    
    // MARK: - Override Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutMeVC = navigationVC.topViewController as? AboutMeViewController else { return }
                aboutMeVC.user = user
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - ID Actions
    @IBAction func logInTapped(_ sender: Any) {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            setUpAlertController(
                titel: "No No No",
                message: "Check your Name or Password",
                textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotButtonTappef(_ sender: UIButton) {
        sender.tag == 0
        ? setUpAlertController(
            titel: "It's so cute 🥰",
            message: "You forgot your name. You are \(user.userName)"
        )
        : setUpAlertController(
            titel: "That is not cute 😐",
            message: "Your password is \(user.password), please remember it."
        )
    }
    
    // MARK: - Privat Methods
    private func setUpAlertController (titel: String, message: String, textField: UITextField? = nil) {
        let alertController = UIAlertController(title: titel, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alertController.addAction(action)
        present(alertController, animated: true)
    }
    
    
    
}

