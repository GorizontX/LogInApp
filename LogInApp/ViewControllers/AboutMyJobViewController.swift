//
//  AboutMyJobViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 17.03.2023.
//

import UIKit

class AboutMyJobViewController: UIViewController {

    @IBOutlet var aboutMyJobLabel: UILabel!
    
    var aboutMyJob: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMyJobLabel.text = aboutMyJob.person.aboutMyJob
        
    }
    

}
