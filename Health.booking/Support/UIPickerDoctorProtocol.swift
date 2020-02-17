//  UIPickerDoctorProtocol.swift
//  Health.booking
//
//  Created by Shak4l on 16/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

protocol UIPickerDoctorDelegate: class {
    func pickerView(_ pickerView: UIPickerView, didSelect doctor: Doctor)
}

class UIPickerDoctorProtocol: NSObject {
    
    weak var delegate: UIPickerDoctorDelegate?
    private var doctors: [Doctor]!
    
    convenience init(data: [Doctor], delegate: UIPickerDoctorDelegate) {
        self.init()
        self.doctors = data
        self.delegate = delegate
    }
}

// MARK: - UIPickerViewDataSource
extension UIPickerDoctorProtocol: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return doctors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?  {
        doctors[row].name
    }
}

// MARK: - UIPickerViewDelegate
extension UIPickerDoctorProtocol: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate?.pickerView(pickerView, didSelect: doctors[row])
    }
}
