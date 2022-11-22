//
//  AboutViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 22.11.2022.
//

import UIKit

final class AboutViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        showInfo()
    }
    
    private func showInfo() {
        sexLabel.text = user?.person.sex
        ageLabel.text = String(user?.person.age ?? 0)
        educationLabel.text = user?.person.education
        hobbyLabel.text = user?.person.hobby
    }
}
