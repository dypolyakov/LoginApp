//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 16.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginAction() {
        
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
