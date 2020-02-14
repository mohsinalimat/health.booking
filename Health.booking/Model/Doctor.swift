//  Doctor.swift
//  Health.booking
//
//  Created by Shak4l on 11/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

struct Doctor {
    var id: String
    var name: String
    var specialty: String
    var hospitalId: String
    
    init(query: GetDoctorQuery.Data.GetDoctor) {
        self.id = query.id
        self.name = query.name
        self.specialty = query.specialty
        self.hospitalId = query.hospitalId
    }
}

struct Hospital {
    var name: String
    var location: String
}
