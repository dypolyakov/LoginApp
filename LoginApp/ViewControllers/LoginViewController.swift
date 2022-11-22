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
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.firstName = user.person.firstName
                welcomeVC.lastName = user.person.lastName
            } else if let aboutVC = viewController as? AboutViewController {
                aboutVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func loginAction() {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password",
                textFieldToClear: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "tabBarController", sender: nil)
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "Your name is \(user.login) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(user.password) 😉")
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
            textFieldToClear?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
