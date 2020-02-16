//  Extension.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit
import HealthKit

// MARK: - UIColor
extension UIColor {
    
    static let lightBackground =
        UIColor(named: "lightBackground")!
    
    static let tableCellBackground =
        UIColor(named: "tableCellBackground")!
    
    
    static let backgroundColor: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        }
        return UIColor.white
    }()
    
    static let successGreen: UIColor = UIColor(red: 75.0/250.0,
                                               green: 181.0/255.0,
                                               blue: 67.0/255.0,
                                               alpha: 1)
    
    static let reversedBackground: UIColor = {
        if #available(iOS 13, *) {
            return .label
        } else {
            return .black
        }
    }()
}

// MARK: - String
extension String {
    func base64Encoded() -> String? {
        return data(using: .utf8)?.base64EncodedString()
    }
    
    func base64Decoded() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
    
    func isValidDouble(maxDecimalPlaces: Int) -> Bool {
        // Use NumberFormatter to check if we can turn the string into a number
        // and to get the locale specific decimal separator.
        let formatter = NumberFormatter()
        formatter.allowsFloats = true // Default is true, be explicit anyways
        let decimalSeparator = formatter.decimalSeparator ?? "."  // Gets the locale specific decimal separator. If for some reason there is none we assume "." is used as separator.
        
        // Check if we can create a valid number. (The formatter creates a NSNumber, but
        // every NSNumber is a valid double, so we're good!)
        if formatter.number(from: self) != nil {
            // Split our string at the decimal separator
            let split = self.components(separatedBy: decimalSeparator)
            
            // Depending on whether there was a decimalSeparator we may have one
            // or two parts now. If it is two then the second part is the one after
            // the separator, aka the digits we care about.
            // If there was no separator then the user hasn't entered a decimal
            // number yet and we treat the string as empty, succeeding the check
            let digits = split.count == 2 ? split.last ?? "" : ""
            
            // Finally check if we're <= the allowed digits
            return digits.count <= maxDecimalPlaces
        }
        
        return false // couldn't turn string into a valid number
    }
}

//MARK: - HKBiologicalSex
extension HKBiologicalSex {
    var stringValue: String {
        switch self {
        case .notSet: return "Unknown"
        case .female: return "Female"
        case .male: return "Male"
        case .other: return "Other"
        @unknown default: return "Other"
        }
    }
    
    // Conform to CaseIterable
    public static var allCases: [HKBiologicalSex] {
        return [.female, .male, .other]
    }
    
    init(stringValue: String) {
        let foundSex = HKBiologicalSex.allCases.first(where: { (sex) -> Bool in
            let lowercasedSex = sex.stringValue.lowercased()
            let lowercasedInput = stringValue.lowercased()
            return lowercasedSex == lowercasedInput
        })
        self = foundSex ?? .other
    }
}

// MARK: - HKBloodType
extension HKBloodType {
    
    var stringValue: String {
        switch self {
        case .aPositive:
            return "A+"
        case .aNegative:
            return "A-"
        case .bPositive:
            return "B+"
        case .bNegative:
            return "B-"
        case .abPositive:
            return "AB+"
        case .abNegative:
            return "AB-"
        case .oPositive:
            return "O+"
        case .oNegative:
            return "O-"
        default:
            return "Not set"
        }
    }
    
    public static var allCases: [Self] {
        return [.aPositive, .aNegative,
                .bPositive, .bNegative,
                .abPositive, .abNegative,
                .oPositive,  .oNegative]
    }
    
    init(stringValue: String) {
        let foundType = HKBloodType.allCases.first(where: { (type) -> Bool in
            let lowercasedType = type.stringValue.lowercased()
            let lowercasedInput = stringValue.lowercased()
            return lowercasedType == lowercasedInput
        })
        self = foundType ?? .notSet
    }
}

// MARK: - Double
extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

// MARK: - UITextField
extension UITextField {
    func setToolbarAccessoryView(buttonTitle: String? = nil,
                                 target: Any? = nil, withAction action: Selector? = nil) {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        var items: [UIBarButtonItem] = []
        
        // Create buttons for toolbar
        if buttonTitle != nil {
            let doneButton = UIBarButtonItem(title: buttonTitle,
                                             style: .done,
                                             target: target,
                                             action: action)
            doneButton.tintColor = .systemBlue
            
            let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                              target: nil,
                                              action: nil)
            
            items.append(contentsOf: [spaceButton, doneButton])
        }
        
        toolbar.items = items
        toolbar.isUserInteractionEnabled = true
        toolbar.isTranslucent = true
        // Set toolbar
        self.inputAccessoryView = toolbar
    }
    
    func setPickerInputView<P: UIPickerViewDataSource & UIPickerViewDelegate>(_ protocols: P) {
        let picker = UIPickerView()
        picker.delegate = protocols
        picker.dataSource = protocols
        picker.showsSelectionIndicator = true
        self.inputView = picker
    }
}

// MARK: - UIViewController
extension UIViewController {
    
    func showAlert(title: String?, message: String? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Alright",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}
