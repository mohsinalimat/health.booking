//  Patient.swift
//  Health.booking
//
//  Created by Shak4l on 11/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation
import HealthKit

struct Patient {
    var id: String
    var firstName: String
    var lastName: String
    var email: String
    var healthId: String
    
    init(query: GetPatientUserQuery.Data.GetPatientUser) {
        self.id = query.id
        self.email = query.email
        self.firstName = query.firstName
        self.lastName = query.lastName
        self.healthId = query.healthId
    }
    
    var fullName: String {
        firstName + " " + lastName
    }
}

struct HealthInfo {
    var id: String
    var sex: HKBiologicalSex
    var age: Int
    var weight: Double
    var height: Double
    var bloodType: HKBloodType
    var system: UnitSystem
    
    init(query: GetHealthInfoQuery.Data.GetHealthInfo) {
        self.id = query.id
        self.sex = HKBiologicalSex(stringValue: query.sex)
        self.age = query.age
        self.weight = query.weight
        self.height = query.height
        self.bloodType = HKBloodType(stringValue: query.bloodType)
        self.system = UnitSystem(rawValue: query.system) ?? .metric
    }
    
    init() {
        self.id = ""
        self.sex = .notSet
        self.age = 0
        self.weight = 0
        self.height = 0
        self.bloodType = .notSet
        self.system = .metric
    }
}

enum UnitSystem: String, CaseIterable {
    case metric
    case imperial
    
    var stringValue: String {
        String(describing: self).capitalized
    }
    
    var hkWeightUnit: HKUnit {
        switch self {
        case .metric:   return .gramUnit(with: .kilo)
        case .imperial: return .pound()
        }
    }
    
    var hkHeightUnit: HKUnit {
        switch self {
        case .metric:   return .meterUnit(with: .centi)
        case .imperial: return .foot()
        }
    }
    
    var lengthUnit: (UnitLength, LengthFormatter.Unit) {
        switch self {
        case .metric:   return (.centimeters, .centimeter)
        case .imperial: return (.feet, .foot)
        }
    }
    
    var massUnit: (UnitMass, MassFormatter.Unit) {
        switch self {
        case .metric:   return (.kilograms, .kilogram)
        case .imperial: return (.pounds, .pound)
        }
    }
}
