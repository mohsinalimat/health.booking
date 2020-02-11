//  AuthController.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AuthController: UIViewController {
    
    @IBOutlet weak var identificationLabel: UILabel!
    @IBOutlet weak var identificationField: UITextField!
    
    var user: User!
    private lazy var authManager = AuthManager(user: user)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI(for: user.kind)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        authManager.isValid { (result) in
            switch result {
            case .success(_):
                // TODO: Perform segue & login
                break
            case .failure(let error):
                print(error.localizedDescription)
                // TODO: Display error to user
                break
            }
        }
    }
}

// MARK: - Methods
extension AuthController {
    private func setupUI(for kind: User.Kind) {
        let isDoctor = kind == .doctor
        identificationLabel.text = isDoctor ? "Hospital ID" : "Email"
        identificationField.placeholder = isDoctor ? "Hospital-FullName-Code" : "john_doe@mail.com"
    }
    
    private func dialog(with message: String) {
        
    }
}
