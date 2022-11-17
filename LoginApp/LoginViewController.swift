//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 16.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    private let accountUserName = "Dima"
    private let accountPassword = "1234"
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeViewController = segue.destination as? WelcomeViewController {
            welcomeViewController.userNameTextField = userNameTextField.text
        }
    }

    @IBAction func loginAction() {
        if userNameTextField.text != accountUserName ||
            passwordTextField.text != accountPassword {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "Your name is \(accountUserName) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(accountPassword) 😉")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let _ = unwindSegue.source as? WelcomeViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { loginAction in
            guard let password = self.passwordTextField.text, !password.isEmpty else { return }
            print("############ Clear password ############")
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
