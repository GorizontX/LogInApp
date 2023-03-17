//
//  AboutAmiViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 17.03.2023.
//

import UIKit

class AboutAmiViewController: UIViewController {

    @IBOutlet var aboutAmiLabel: UILabel!
    
    var aboutAmi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutAmiLabel.text = aboutAmi
   
    }
    

}
