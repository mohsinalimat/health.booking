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
    var info: HealthInfo
}

struct HealthInfo {
    var id: String
    var sex: PatientSex
    var age: Int
    var weight: Double
    var height: Double
    var system: MeasurmentSystem
}

enum PatientSex: String {
    case male
    case female
    case other
}

enum MeasurmentSystem: String {
    case metric
    case imperial
}
