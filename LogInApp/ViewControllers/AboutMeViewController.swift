//
//  AboutMeViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 16.03.2023.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var aboutMeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeLabel.text = user

    }
    

}
