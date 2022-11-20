//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 16.11.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = "Dima"
    private let password = "1234"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.user = user
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func loginAction() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password",
                textFieldToClear: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(
        with title: String,
        and message: String,
        textFieldToClear: UITextField? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            guard let password = textFieldToClear?.text, !password.isEmpty else { return }
            textFieldToClear?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
