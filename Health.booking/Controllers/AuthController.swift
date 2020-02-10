//  AuthController.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AuthController: UIViewController {
    
    @IBOutlet weak var identificationLabel: UILabel!
    @IBOutlet weak var identificationField: UITextField!
    
    var userType: UserType?
    var user: User?
    var manager: AuthManager?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let type = userType else { return }
        setupUI(for: type)
        setup(for: type)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        manager?.isValid(completion: { (result) in
            switch result {
            case .success(_):
                // TODO: Perform segue & login
                break
            case .failure(_):
                // TODO: Display error to user
                break
            }
        })
    }
}

// MARK: - Methods
extension AuthController {
    private func setupUI(for type: UserType) {
        identificationLabel.text = type == .doctor ? "Hospital ID" : "Email"
        identificationField.placeholder = type == .doctor ? "Hospital-Name-Code" : "john_doe@email.com"
    }
    
    private func setup(for type: UserType) {
        switch type {
        case .patient:
            user = PatientUser()
            manager = PatientAuthManager()
        case .doctor:
            user = DoctorUser()
            manager = DoctorAuthManager()
        }
    }
}
