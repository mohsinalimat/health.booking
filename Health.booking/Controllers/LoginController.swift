//  LoginController.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var key: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userKey = key else { return }
        let client = AWSClient.shared
        let userQuery = GetUserQuery(key: userKey)
        print("Received key:", userKey)
        client.query(userQuery) { (result) in
            switch result {
            case .success(let userData):
                guard userData.getUser != nil else {
                    self.presentError("Invalid credentials!")
                    return
                }
                self.presentSuccess("Login you in")
            case .failure(let error):
                self.presentError("Something went wrong please try again")
                print("Error while fetching user")
                print(error.localizedDescription)
            }
        }
    }
}

// MARK: - Methods
extension LoginController {
    
    private func presentError(_ message: String) {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.textLabel.textColor = .red
            self.textLabel.text = message
        }
    }
    
    private func presentSuccess(_ message: String) {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.textLabel.textColor = .reversedBackground
            self.textLabel.text = message
        }
    }
}
