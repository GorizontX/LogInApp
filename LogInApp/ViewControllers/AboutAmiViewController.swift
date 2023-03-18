//
//  AboutAmiViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 17.03.2023.
//

import UIKit

class AboutAmiViewController: UIViewController {
    
    @IBOutlet var amiImageView: UIImageView!
    @IBOutlet var aboutAmiLabel: UILabel!
    
    var user: User!
    
    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutAmiLabel.text = user.person.aboutMyPet
        amiImageView.layer.cornerRadius = 20
        
    }
    
    
}
