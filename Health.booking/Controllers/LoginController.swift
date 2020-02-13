//  LoginController.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var actionButton: UIButton!
    
    var key: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userKey = key else { return }
        let client = AWSClient.shared
        let userQuery = GetUserQuery(key: userKey)
        print("Received key:", userKey)
        loginUser(client, userQuery)
    }
}

extension LoginController {
    
    private func loginUser(_ client: AWSClient, _ userQuery: GetUserQuery) {
        client.query(userQuery) { (result) in
            switch result {
            case .success(let userData):
                guard let user = userData.getUser else {
                    self.presentError("Invalid credentials!")
                    return
                }
                self.presentSuccess("Login you in")
                
                
                if user.type == "Patient" {
                    self.fetchPatient(client, user.id)
                }
                // TODO: Complete for doctor
            case .failure(let error):
                self.presentError("Something went wrong please try again")
                print("Error while fetching user")
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchPatient(_ client: AWSClient,_ patientId: String) {
        let patientQuery = GetPatientUserQuery(id: patientId)
        client.query(patientQuery) { (result) in
            switch result {
            case .success(let patientData):
                guard let patient = patientData.getPatientUser else {
                    self.presentError("Couldn't find your profile")
                    return
                }
                self.presentSuccess("Welcome \(patient.firstName)")
                self.fetchHealthProfile(client, patient.healthId)
                print(patient)
            case .failure(let error):
                self.presentError("Something went wrong please try again")
                print("Error while patient user")
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchHealthProfile(_ client: AWSClient,_ healthId: String) {
        let healthQuery = GetHealthInfoQuery(id: healthId)
        client.query(healthQuery) { (result) in
            switch result {
            case .success(let healthData):
                guard let healthInfo = healthData.getHealthInfo else {
                    self.presentError("No health data available")
                    return
                }
                self.presentSuccess("Data synced\n Continue", isFinished: true)
                print(healthInfo)
            case .failure(let error):
                self.presentError("Something went wrong while syncing data")
                print("Error while patient user")
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
            self.actionButton.isHidden = false
            self.actionButton.setImage(UIImage(named: "ic_back"), for: .normal)
        }
    }
    
    private func presentSuccess(_ message: String, isFinished: Bool = false) {
        DispatchQueue.main.async {
            self.textLabel.textColor = .reversedBackground
            self.textLabel.text = message
            if isFinished {
                self.activityIndicator.stopAnimating()
                self.actionButton.isHidden = false
                self.actionButton.setImage(UIImage(named: "ic_next"), for: .normal)
            }
        }
    }
}
