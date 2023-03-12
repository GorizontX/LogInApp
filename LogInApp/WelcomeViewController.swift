//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 11.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var helloLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = helloLabel
    }
    
    
    @IBAction func logoutTapped() {
        dismiss(animated: true)
    }
    
}
