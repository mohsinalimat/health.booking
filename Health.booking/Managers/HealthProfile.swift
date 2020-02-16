//  HealthProfile.swift
//  Health.booking
//
//  Created by Shak4l on 15/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation
import HealthKit

class HealthProfile {
    
    init(healthInfo: HealthInfo) {
        self.age = healthInfo.age
        self.height = healthInfo.height
        self.weight = healthInfo.weight
        self.biologicalSex = healthInfo.sex
        self.unitSystem = healthInfo.system
        self.bloodType = healthInfo.bloodType
    }
    
    var age: Int = 0 {
        didSet { onValueChanged?(.age(age)) }
    }
    
    var height: Double = 0 {
        didSet { onValueChanged?(.height(localizedHeight)) }
    }
    
    var weight: Double = 0 {
        didSet { onValueChanged?(.weight(localizedWeight)) }
    }
    
    var biologicalSex: HKBiologicalSex = .notSet {
        didSet { onValueChanged?(.sex(biologicalSex)) }
    }
    
    var bloodType: HKBloodType = .notSet {
        didSet { onValueChanged?(.bloodType(bloodType)) }
    }
    
    var unitSystem: UnitSystem = .metric {
        didSet {
            // Fire observer
            onValueChanged?(.unitSystem(unitSystem))
            // convert heigth & weight to new units
            let measurmentWeight = Measurement(value: weight, unit: oldValue.massUnit.0)
            weight = measurmentWeight.converted(to: unitSystem.massUnit.0).value.rounded(toPlaces: 1)
            
            let measurmentHeight = Measurement(value: height, unit: oldValue.lengthUnit.0)
            height = measurmentHeight.converted(to: unitSystem.lengthUnit.0).value.rounded(toPlaces: 1)
        }
    }
    
    // Computed properties
    var bodyMassIndex: Double {
        switch unitSystem {
        case .metric: return weight / (pow((height / 100), 2))
        case .imperial:
            let heightInches = Measurement(value: height, unit: UnitLength.feet)
                .converted(to: .inches)
                .value
                .rounded(toPlaces: 1)
            return 703 * (weight / (heightInches * heightInches))
            
        }
    }
    
    var localizedWeight: String {
        let massFormatter = MassFormatter()
        massFormatter.isForPersonMassUse = true
        return massFormatter.string(fromValue: weight, unit: unitSystem.massUnit.1)
    }
    
    var localizedHeight: String {
        let lengthFormat = LengthFormatter()
        lengthFormat.isForPersonHeightUse = true
        return lengthFormat.string(fromValue: height, unit: unitSystem.lengthUnit.1)
    }
    
    /// When implemented will be fired each time when a
    /// property is updated inside of HealthProfile
    ///
    /// To fetch the newValue access each `HealthProfileType`
    /// associated value
    ///
    /// Observes:
    ///
    /// age: Int, height: Double, weight: Double,
    /// biologicalSex: HKBiologocialSex, unitSystem: UnitSystem
    var onValueChanged: ((HealthType) -> ())?
    
    enum HealthType {
        case age(Int)
        case sex(HKBiologicalSex)
        case weight(String)
        case height(String)
        case unitSystem(UnitSystem)
        case bloodType(HKBloodType)
    }
    
    /// Check `HealthProfile` data if it is valid
    /// - Parameter missing:
    ///     *Bool:* isValid
    ///
    ///     *HealthProfileType?:* if !isValid returns message
    func check(_ missing: ((Bool, String?) -> ())?) {
        
        guard age > 0 else { missing?(false, "Age entered is invalid"); return }
        guard height > 0 else { missing?(false, "Height entered is invalid"); return }
        guard weight > 0 else { missing?(false, "Weight entered is invalid"); return }
        guard biologicalSex != .notSet else { missing?(false, "Sex is not set"); return }
        guard bloodType != .notSet else { missing?(false, "Blood type is not set"); return }
        
        missing?(true, nil)
    }
    
    func update(_ newValue: HealthInfo) {
        if newValue.sex != .notSet {
            self.biologicalSex = newValue.sex
        }
        
        if newValue.age != 0 {
            self.age = newValue.age
        }
        
        if newValue.weight != 0 {
            self.weight = newValue.weight
        }
        
        if newValue.height != 0 {
            self.height = newValue.height
        }
        
        if newValue.bloodType != .notSet {
            self.bloodType = newValue.bloodType
        }
    }
}


