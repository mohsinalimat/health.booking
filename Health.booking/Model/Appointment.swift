//  Appointment.swift
//  Health.booking
//
//  Created by Shak4l on 14/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

struct Appointment {
    
    var id: String
    var ownerId: String
    var ownerName: String
    var doctorId: String
    var doctorName: String
    var doctorSpecialty: String
    var hospitalName: String
    var hospitalLocation: String
    var date: String
    var time: String
    var status: Status
    var note: String
    
    enum Status: String {
        case pending
        case upcoming
        case aborted
        case completed
    }
    
    init(query: ListAppointmentsQuery.Data.ListAppointment.Item) {
        self.id = query.id
        self.ownerId = query.ownerId
        self.ownerName = query.ownerName
        self.doctorId = query.doctorId
        self.doctorName = query.doctorName
        self.note = query.note
        self.status = Status(rawValue: query.status.lowercased()) ?? .upcoming
        self.doctorSpecialty = query.doctorSpecialty
        self.hospitalName = query.hospitalName
        self.hospitalLocation = query.hospitalLocation
        
        // Parse data
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm"
        let parsedDate = formatter.date(from: query.date) ?? Date()
        formatter.timeStyle = .none
        formatter.dateStyle = .long
        self.date = formatter.string(from: parsedDate)
        formatter.timeStyle = .short
        formatter.dateStyle = .none
        self.time = formatter.string(from: parsedDate)
    }
}

