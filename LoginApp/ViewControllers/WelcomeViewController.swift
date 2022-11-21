//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 16.11.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - public properties
    var user = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundGradient()
        let user = User.getUser()
        welcomeLabel.text = "Welcome, \(user.person.name)!"
    }
    
    // MARK: - Private Methods
    private func setBackgroundGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.red.withAlphaComponent(0.4).cgColor,
            UIColor.blue.withAlphaComponent(0.4).cgColor
        ]
        view.layer.insertSublayer(gradient, at: 0)
    }
}
