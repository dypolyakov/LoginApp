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
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.red.withAlphaComponent(0.4).cgColor, UIColor.blue.withAlphaComponent(0.4).cgColor]
        view.layer.insertSublayer(gradient, at: 0)
        
        welcomeLabel.text = "Welcome, \(userNameTextField ?? "User")!"
        
    }
    
    @IBAction func logoutAction() {
        dismiss(animated: true)
    }
}
