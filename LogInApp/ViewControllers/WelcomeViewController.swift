//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 11.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcom, \(user.person.welcomeMessame)"
    }
    
    
}
