//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 11.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)"
    }
    
}
    
