//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 16.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    var userNameTextField: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userNameTextField ?? "User")"
        
    }
    
    @IBAction func logoutAction() {
        dismiss(animated: true)
    }
}
