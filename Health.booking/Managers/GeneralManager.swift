//  GeneralManager.swift
//  Health.booking
//
//  Created by Shak4l on 14/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class GeneralManager {
    
    private lazy var client = AWSClient.shared
    
    static let shared = GeneralManager()
    private init() { }
    
    // - Fields
    var appointments: [Appointment]?
    var doctors: [Doctor]?
    var hospitals: [Hospital]?
}

// MARK: - Public
extension GeneralManager {
    
    func getAllAppointments(completion: (([Appointment]?) -> Void)? = nil) {
        client.query(ListAppointmentsQuery()) { (result) in
            switch result {
            case .success(let appointmentsData):
                guard let appointments = appointmentsData.listAppointments?.items?
                    .compactMap({ $0 }) else {
                        return
                }
                
                let list = appointments.map({ Appointment(query: $0) })
                self.appointments = list
                completion?(list)
            case .failure(let error):
                print("Error while getting all appointments")
                print(error.localizedDescription)
                completion?(nil)
            }
        }
    }
    
    func getAllAppointments(for userId: String?, completion: (([Appointment]?) -> Void)? = nil) {
        // Filter by ID
        var appointmentFilter = TableAppointmentFilterInput()
        var idFilter = TableIDFilterInput()
        idFilter.eq = userId
        appointmentFilter.doctorId = idFilter
        let appointmentQuery = ListAppointmentsQuery(filter: appointmentFilter,
                                                     limit: nil, nextToken: nil)
        client.query(appointmentQuery) { (result) in
            switch result {
            case .success(let appointmentsData):
                guard let appointments = appointmentsData.listAppointments?.items?
                    .compactMap({ $0 }) else {
                        return
                }
                
                let list = appointments.map({ Appointment(query: $0) })
                self.appointments = list
                completion?(list)
            case .failure(let error):
                print("Error while getting all appointments")
                print(error.localizedDescription)
                completion?(nil)
            }
        }
    }
    
    func getAllDoctors(completion: (([Doctor]?) -> Void)? = nil) {
        client.query(ListDoctorsQuery()) { (result) in
            switch result {
            case .success(let doctorsData):
                guard let doctors = doctorsData.listDoctors?.items?
                    .compactMap({ $0 }) else {
                        return
                }
                let list = doctors.map({ Doctor(listQuery: $0) })
                self.doctors = list
                completion?(list)
            case .failure(let error):
                print("Error while getting all appointments")
                print(error.localizedDescription)
                completion?(nil)
            }
        }
    }
    
    func getAllHospitals(completion: (([Hospital]?) -> Void)? = nil) {
        client.query(ListHospitalsQuery()) { (result) in
            switch result {
            case .success(let hospitalsData):
                guard let hospitals = hospitalsData.listHospitals?.items?
                    .compactMap({ $0 }) else {
                        return
                }
                
                let list = hospitals.map({ Hospital(listQuery: $0) })
                self.hospitals = list
                completion?(list)
            case .failure(let error):
                print("Error while getting all appointments")
                print(error.localizedDescription)
                completion?(nil)
            }
        }
    }
}

// MARK: - Helpers
extension GeneralManager {
    func appointmetsByStatus() -> [[Appointment]] {
        guard let data = appointments else { return [] }
        var filteredData: [[Appointment]] = []
        let allStatuses = Appointment.Status.allCases
        allStatuses.forEach { (status) in
            let filtered = data.filter({ $0.status == status })
            filteredData.append(filtered)
        }
        return filteredData
    }
}
