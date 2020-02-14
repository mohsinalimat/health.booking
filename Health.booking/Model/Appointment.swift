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
    var date: Date
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
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-DDThh:mm:ss"
        let formatedDate = formatter.date(from: query.date)
        self.date = formatedDate ?? Date()
    }
}
