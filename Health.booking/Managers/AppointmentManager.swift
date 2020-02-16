//  AppointmentManager.swift
//  Health.booking
//
//  Created by Shak4l on 14/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class AppointmentManager {
    
    var client = AWSClient.shared
    
}

// MARK: - Public
extension AppointmentManager {
    
    func getAll(completion: @escaping ( ([Appointment]?) -> Void ) ) {
        client.query(ListAppointmentsQuery()) { (result) in
            switch result {
            case .success(let appointmentsData):
                guard let appointments = appointmentsData.listAppointments?.items?
                    .compactMap({ $0 }) else {
                        return
                }
                
                let list = appointments.map({ Appointment(query: $0) })
                completion(list)
            case .failure(let error):
                print("Error while getting all appointments")
                print(error.localizedDescription)
                completion(nil)
            }
        }
    }
}
