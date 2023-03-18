//
//  AboutMyJobViewController.swift
//  LogInApp
//
//  Created by Andrey Machulin on 17.03.2023.
//

import UIKit

class AboutMyJobViewController: UIViewController {
    
    @IBOutlet var aboutMyJobLabel: UILabel!
    
    var user: User!
    
    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMyJobLabel.text = user.person.aboutMyJob
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutAmiVC = segue.destination as? AboutAmiViewController else { return }
        aboutAmiVC.user = user
    }
    
    
}
