//  HealthAppController.swift
//  Health.booking
//
//  Created by Shak4l on 15/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class HealthAppController: UIViewController {
    
    // - IBOutlets
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var bloodTypeLabel: UILabel!
    
    private lazy var healthConnect = HealthConnect()
    private(set) var healthInfo = HealthInfo()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        healthConnect.authorize { (isAuthorized, err) in
            guard isAuthorized && err == nil else {
                print("HealthKit Authorization Failed")
                print(err?.localizedDescription ?? "No error")
                return
            }
            
            self.setupHealthInfo()
        }
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSave(_ sender: Any) {
        performSegue(withIdentifier: "UnwinderToHealthData", sender: nil)
    }
}

extension HealthAppController {
    private func setupHealthInfo() {
        
        if let sex = healthConnect.sex {
            healthInfo.sex = sex
            DispatchQueue.main.async {
                self.sexLabel.text = sex.stringValue
            }
        }
        
        if let age = healthConnect.getAge() {
            healthInfo.age = age
            DispatchQueue.main.async {
                self.ageLabel.text = String(age)
            }
        }
        
        if let bloodType = healthConnect.bloodType {
            healthInfo.bloodType = bloodType
            DispatchQueue.main.async {
                self.bloodTypeLabel.text = bloodType.stringValue
            }
        }
        
        healthConnect.getUnitSystem { (newSystem) in
            self.healthInfo.system = newSystem
            DispatchQueue.main.async {
                self.unitLabel.text = newSystem.rawValue.capitalized
            }
            
            self.healthConnect.height(for: newSystem) { (height) in
                guard let height = height else { return }
                self.healthInfo.height = height
                DispatchQueue.main.async {
                    self.heightLabel.text = String(height)
                }
            }
            
            self.healthConnect.weight(for: newSystem) { (weight) in
                guard let weight = weight else { return }
                self.healthInfo.weight = weight
                DispatchQueue.main.async {
                    self.weightLabel.text = String(weight)
                }
            }
        }
    }
}
