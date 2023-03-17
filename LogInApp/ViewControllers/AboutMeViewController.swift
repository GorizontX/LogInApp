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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeLabel.text = user.person.aboutMe
        aboutMeLabel.layer.cornerRadius = 20.0
        aboutMeLabel.layer.masksToBounds = true
        aboutMeLabel.layer.borderColor = UIColor.white.cgColor
        aboutMeLabel.layer.borderWidth = 1.0
        
        myPhotoImageView.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMyJobVC = segue.destination as? AboutMyJobViewController else { return }
        aboutMyJobVC.aboutMyJob = user
        
    }

}
