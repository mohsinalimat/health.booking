//  AuthController.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AuthController: UIViewController {
    
    @IBOutlet weak var identificationLabel: UILabel!
    @IBOutlet weak var identificationField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var userKind: User.Kind!
    private lazy var user = User(kind: userKind)
    private lazy var authManager = AuthManager(user: user)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI(for: userKind)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        authManager.isValid { (result) in
            switch result {
            case .success(let key):
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "LoginSegue", sender: key)
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.dialog(with: error.localizedDescription)
                }
            }
        }
    }
    
    // - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let key = sender as? String else { return }
        guard let dvc = segue.destination as? LoginController else { return }
        dvc.key = key
        dvc.kind = userKind
    }
}

// MARK: - Methods
extension AuthController {
    private func setupUI(for kind: User.Kind) {
        let isDoctor = kind == .doctor
        identificationLabel.text = isDoctor ? "Hospital ID" : "Email"
        identificationField.placeholder = isDoctor ? "Hospital-FullName-Code" : "john_doe@mail.com"
        identificationField.textContentType = isDoctor ? .nickname : .emailAddress
        identificationField.delegate = self
        passwordField.delegate = self
    }
    
    private func dialog(with message: String) {
        let dialog = UIView()
        dialog.frame = CGRect(x: 16, y: 16,
                              width: view.bounds.width - 32,
                              height: 200)
        
        dialog.backgroundColor = .backgroundColor
        dialog.clipsToBounds = true
        dialog.layer.cornerRadius = 10
        dialog.alpha = 0
        
        let textLabel = UILabel()
        textLabel.frame = dialog.bounds
        textLabel.textAlignment = .center
        textLabel.text = message
        textLabel.numberOfLines = 0
        
        dialog.addSubview(textLabel)
        view.addSubview(dialog)
        dialog.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.3, animations: {
            dialog.alpha = 1
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            dialog.removeFromSuperview()
        })
    }
}

// MARK: - UITextFieldDelegate
extension AuthController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == identificationField {
            user.identification = textField.text
            print("User id:", textField.text ?? "")
        }
        
        if textField == passwordField {
            user.password = textField.text
            print("User password:", textField.text ?? "")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
