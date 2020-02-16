//  HealthDataController.swift
//  Health.booking
//
//  Created by Shak4l on 15/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit
import HealthKit

class HealthDataController: UIViewController {
    
    // - IBOutlets
    @IBOutlet weak var unitField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var bloodTypeField: UITextField!
    @IBOutlet weak var connectBtn: UIButton!
    @IBOutlet weak var saveIndicator: UIActivityIndicatorView!
    
    // - Stored
    private var patientProfile = PatientProfile.current
    
    private lazy var healthProfile =
        HealthProfile(healthInfo: patientProfile.healthInfo ?? HealthInfo())
    
    // - UIPickerHealthProtocol
    private lazy var healthPickerProtocolAge =
        UIPickerHealthProtocol(type: .age(Array(1...100)),
                               delegate: self)
    
    private lazy var healthPickerProtocolSex =
        UIPickerHealthProtocol(type: .sex(HKBiologicalSex.allCases),
                               delegate: self)
    
    private lazy var healthPickerProtocolUnit =
        UIPickerHealthProtocol(type: .unit(UnitSystem.allCases),
                               delegate: self)
    
    private lazy var healthPickerProtocolBloodType =
        UIPickerHealthProtocol(type: .bloodType(HKBloodType.allCases),
                               delegate: self)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        healthProfile.onValueChanged = { [weak self] type in
            DispatchQueue.main.async {
                switch type {
                case .age(let newValue): self?.ageField.text = "\(newValue)"
                case .sex(let newValue): self?.sexField.text = newValue.stringValue
                case .weight(let newValue): self?.weightField.text = newValue
                case .height(let newValue): self?.heightField.text = newValue
                case .unitSystem(let newValue): self?.unitField.text = newValue.stringValue
                case .bloodType(let newValue): self?.bloodTypeField.text = newValue.stringValue
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup(ageField, healthPickerProtocolAge)
        setup(sexField, healthPickerProtocolSex)
        setup(unitField, healthPickerProtocolUnit)
        setup(bloodTypeField, healthPickerProtocolBloodType)
        setup(weightField)
        weightField.delegate = self
        setup(heightField)
        heightField.delegate = self
        
        loadHealthInfo()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        healthProfile.onValueChanged = nil
    }
    
    @IBAction func onHealthAppSave(_ segue: UIStoryboardSegue) {
        guard let source = segue.source as? HealthAppController else { return }
        healthProfile.update(source.healthInfo)
    }
    
    @IBAction func onSave(_ sender: UIButton) {
        healthProfile.check { (isValid, message) in
            guard isValid else {
                self.showAlert(title: "Warning", message: message)
                return 
            }
            // Update API 
            guard let id = self.patientProfile.healthInfo?.id else {
                self.showAlert(title: "The operation is not possible at this time")
                return
            }
            // Setup data
            let profile = self.healthProfile
            let healthUpdate = UpdateHealthInfoInput(age: profile.age,
                                                     bloodType: profile.bloodType.stringValue,
                                                     height: profile.height,
                                                     id: id,
                                                     sex: profile.biologicalSex.stringValue,
                                                     system: profile.unitSystem.stringValue,
                                                     weight: profile.weight)
            // - Prepare API call
            sender.isEnabled = false
            self.saveIndicator.startAnimating()
            AWSClient.shared.mutate(UpdateHealthInfoMutation(input: healthUpdate)) { (error) in
                
                // - Error
                if let awsError = error {
                    print(awsError.localizedDescription)
                    DispatchQueue.main.async {
                        self.showAlert(title: "Failed to update try again")
                        self.saveIndicator.stopAnimating()
                        sender.isEnabled = true
                    }
                }
                
                // - Success
                DispatchQueue.main.async {
                    self.showAlert(title: "Update",
                                   message: "Your health data was updated")
                    self.saveIndicator.stopAnimating()
                    sender.isEnabled = true
                }
            }
        }
    }
    
    @objc func closeKeyboard(_ sender: UIBarButtonItem) {
        view.endEditing(true)
    }
}

// MARK: - Methods
extension HealthDataController {
    private func loadHealthInfo() {
        self.unitField.text = healthProfile.unitSystem.stringValue
        self.weightField.text = healthProfile.localizedWeight
        self.heightField.text = healthProfile.localizedHeight
        self.ageField.text = String(healthProfile.age)
        self.sexField.text = healthProfile.biologicalSex.stringValue
        self.bloodTypeField.text = healthProfile.bloodType.stringValue
    }
    
    private func setup(_ textField: UITextField,_ healthPickerProtocol: UIPickerHealthProtocol? = nil) {
        if let pickerProtocol = healthPickerProtocol {
            textField.setPickerInputView(pickerProtocol)
        }
        textField.setToolbarAccessoryView(buttonTitle: "Done",
                                          target: self,
                                          withAction: #selector(closeKeyboard(_:)))
    }
}

// MARK: - UITextFieldDelegate
extension HealthDataController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.isEmpty { return true }
        let currentText = textField.text ?? ""
        let replacmentText = (currentText as NSString).replacingCharacters(in: range, with: string)
        return replacmentText.isValidDouble(maxDecimalPlaces: 2)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        var inputedText = textField.text ?? ""
        inputedText = inputedText.replacingOccurrences(of: ",", with: ".")
        guard let doubleValue = Double(inputedText) else { return }
        
        if textField == weightField {
            healthProfile.weight = doubleValue
        }
        
        if textField == heightField {
            healthProfile.height = doubleValue
        }
    }
}

// MARK: - UIPickerViewHealthDelegate
extension HealthDataController: UIPickerViewHealthDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelect age: Int) {
        healthProfile.age = age
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelect sex: HKBiologicalSex) {
        healthProfile.biologicalSex = sex
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelect unitSystem: UnitSystem) {
        healthProfile.unitSystem = unitSystem
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelect bloodType: HKBloodType) {
        healthProfile.bloodType = bloodType
    }
}
