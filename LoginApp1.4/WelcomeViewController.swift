//
//  WelcomeViewController.swift
//  LoginApp1.4
//
//  Created by ДОБРО on 18.04.2025.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    welcomeLabel.text = "Welcome, \(user)!"    }
    
    @IBAction func logoutButtonAction() {
        dismiss(animated: true)
        
    }
    

}
