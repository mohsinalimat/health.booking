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
    
    init(listQuery: ListDoctorsQuery.Data.ListDoctor.Item) {
        self.id = listQuery.id
        self.name = listQuery.name
        self.specialty = listQuery.specialty
        self.hospitalId = listQuery.hospitalId
    }
}

struct Hospital {
    var id: String
    var name: String
    var location: String
    var coordinates: String
    
    init(query: GetHospitalQuery.Data.GetHospital) {
        self.id = query.id
        self.name = query.name
        self.location = query.location
        self.coordinates = query.coordinates
    }
    
    init(listQuery: ListHospitalsQuery.Data.ListHospital.Item) {
        self.id = listQuery.id
        self.name = listQuery.name
        self.location = listQuery.location
        self.coordinates = listQuery.coordinates
    }
}
