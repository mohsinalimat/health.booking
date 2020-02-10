//  ViewController.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class OnboardingController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    private var userSelected: UserType?
    
    @IBAction func onContinue(_ sender: Any) {
        guard let user = userSelected else { return }
        switch user {
        case .patient:
            performSegue(withIdentifier: "PatientStoryboardSegue", sender: nil)
        case .doctor:
            performSegue(withIdentifier: "DoctorStoryboardSegue", sender: nil)
        }
    }

    @IBAction func onUserSelected(_ sender: UIButton) {
        buttons.forEach({ $0.backgroundColor = .clear; $0.isSelected = false })
        sender.isSelected = !sender.isSelected
        sender.backgroundColor = sender.isSelected ? .lightBackground : .clear
        userSelected = UserType(rawValue: sender.tag)
    }
}

