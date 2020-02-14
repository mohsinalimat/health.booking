//  LoginController.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class LoginController: UIViewController {
    
    // - IBOutlet
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var actionButton: UIButton!
    
    // - Properties
    var key: String?
    var kind: User.Kind?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userKey = key else { return }
        ProfileManager(key: userKey).initiate { (result) in
            switch result {
            case .success(let step):
                self.presentSuccess(step.description, isFinished: step == .completed)
            case .failure(let error):
                self.presentError(error.localizedDescription)
            }
        }
    }
    
    @objc func onContinue(_ sender: UIButton) {
        performSegue(withIdentifier: kind!.description + "Segue", sender: nil)
    }
    
    @objc func onAbort(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

// MARK: - Methods
extension LoginController {
    
    private func presentError(_ message: String) {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.textLabel.textColor = .red
            self.textLabel.text = message
            self.actionButton.isHidden = false
            self.actionButton.setImage(UIImage(named: "ic_back"), for: .normal)
            self.actionButton.addTarget(self,
                                        action: #selector(self.onAbort(_:)),
                                        for: .touchUpInside)
        }
    }
    
    private func presentSuccess(_ message: String, isFinished: Bool = false) {
        DispatchQueue.main.async {
            self.textLabel.textColor = .reversedBackground
            self.textLabel.text = message
            
            // If finished stop animation and show button
            guard isFinished else { return }
            self.activityIndicator.stopAnimating()
            self.actionButton.isHidden = false
            self.actionButton.setImage(UIImage(named: "ic_next"), for: .normal)
            self.actionButton.addTarget(self,
                                        action: #selector(self.onContinue(_:)),
                                        for: .touchUpInside)
        }
    }
}
