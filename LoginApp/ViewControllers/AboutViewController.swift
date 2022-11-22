//
//  AboutViewController.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 22.11.2022.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    // MARK: - Public Properties
    var sex = ""
    var age = 0
    var education = ""
    var hobby = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        sexLabel.text = sex
        ageLabel.text = String(age)
        educationLabel.text = education
        hobbyLabel.text = hobby
        
    }

}
