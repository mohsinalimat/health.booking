//  User.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

protocol User {
    var identification: String { get set }
    var password: String { get set }
}

struct PatientUser: User {
    var identification: String = ""
    var password: String = ""
    // TODO: Add health data
}

struct DoctorUser: User {
    var identification: String = ""
    var password: String = ""
}
