//  ViewController.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class OnboardingController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    private var userSelected: UserType?
    
    @IBAction func onUserSelected(_ sender: UIButton) {
        buttons.forEach({ $0.backgroundColor = .clear; $0.isSelected = false })
        sender.isSelected = !sender.isSelected
        UIView.animate(withDuration: 0.5) {
            sender.backgroundColor = sender.isSelected ? .lightBackground : .clear
        }
        userSelected = UserType(rawValue: sender.tag)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let user = userSelected else { return }
        guard let dvc = segue.destination as? AuthController else { return }
        dvc.userType = user
    }
}
