//  Patient.swift
//  Health.booking
//
//  Created by Shak4l on 11/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

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
}

struct HealthInfo {
    var id: String
    var sex: PatientSex
    var age: Int
    var weight: Double
    var height: Double
    var system: MeasurementSystem
    
    init(query: GetHealthInfoQuery.Data.GetHealthInfo) {
        self.id = query.id
        self.sex = PatientSex(rawValue: query.sex) ?? .other
        self.age = query.age
        self.weight = query.weight
        self.height = query.height
        self.system = MeasurementSystem(rawValue: query.system) ?? .metric
    }
}

enum PatientSex: String {
    case male
    case female
    case other
}

enum MeasurementSystem: String {
    case metric
    case imperial
}
