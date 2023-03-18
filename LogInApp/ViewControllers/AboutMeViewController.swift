//
//  AboutMeViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 16.03.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var myPhotoImageView: UIImageView!
    @IBOutlet var aboutMeLabel: UILabel!
    
    var user: User!
    
    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeLabel.text = user.person.aboutMe
        myPhotoImageView.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMyJobVC = segue.destination as? AboutMyJobViewController else { return }
        aboutMyJobVC.user = user
        
    }
    
}
