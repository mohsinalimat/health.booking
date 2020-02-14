//  DoctorProfile.swift
//  Health.booking
//
//  Created by Shak4l on 14/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class DoctorProfile {
    
    var key: String?
    var data: Doctor?
    var hospital: Hospital?
    
    static let current = DoctorProfile()
    private init() { }
}
