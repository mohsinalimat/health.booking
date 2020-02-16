//  UIPickerHealthProtocol.swift
//  Health.booking
//
//  Created by Shak4l on 15/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit
import HealthKit

protocol UIPickerViewHealthDelegate: class {
    func pickerView(_ pickerView: UIPickerView, didSelect age: Int)
    func pickerView(_ pickerView: UIPickerView, didSelect sex: HKBiologicalSex)
    func pickerView(_ pickerView: UIPickerView, didSelect unitSystem: UnitSystem)
    func pickerView(_ pickerView: UIPickerView, didSelect bloodType: HKBloodType)
}

enum UIPickerViewHealthType {
    case age(_ data: [Int])
    case sex(_ data: [HKBiologicalSex])
    case unit(_ data: [UnitSystem])
    case bloodType(_ data: [HKBloodType])
    
    var associatedValue: Array<Any> {
        switch self {
        case .age(let ages): return ages
        case .sex(let sexes): return sexes
        case .unit(let systems): return systems
        case .bloodType(let bloodTypes): return bloodTypes
        }
    }
}

class UIPickerHealthProtocol: NSObject {
    
    var type: UIPickerViewHealthType!
    weak var delegate: UIPickerViewHealthDelegate?
    
    convenience init(type: UIPickerViewHealthType, delegate: UIPickerViewHealthDelegate?) {
        self.init()
        self.type = type
        self.delegate = delegate
    }
}

extension UIPickerHealthProtocol: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return type.associatedValue.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch type {
        case .none: return ""
        case .sex(let sexes): return sexes[row].stringValue
        case .age(let ages): return "\(ages[row])"
        case .unit(let system): return system[row].stringValue
        case .bloodType(let bloodType): return bloodType[row].stringValue
        }
    }
}

extension UIPickerHealthProtocol: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch type {
        case .none: break
        case .sex(let data):
            delegate?.pickerView(pickerView, didSelect: data[row])
        case .age(let data):
            delegate?.pickerView(pickerView, didSelect: data[row])
        case .unit(let data):
            delegate?.pickerView(pickerView, didSelect: data[row])
        case .bloodType(let data):
            delegate?.pickerView(pickerView, didSelect: data[row])
        }
    }
}
