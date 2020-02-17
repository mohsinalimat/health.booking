//  BookingManager.swift
//  Health.booking
//
//  Created by Shak4l on 16/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation


class BookingManager {
    
    static let `default` = BookingManager()
    private init() { }
    
    // - Fields
    var appointment = CreateAppointmentInput(date: "",
                                             doctorId: "",
                                             doctorName: "",
                                             doctorSpecialty: "", healthId: "",
                                             hospitalLocation: "",
                                             hospitalName: "",
                                             note: "",
                                             ownerId: "",
                                             ownerName: "",
                                             status: "")
}

extension BookingManager {
    
    private func validate() -> String? {
        guard !appointment.doctorId.isEmpty &&
            !appointment.doctorName.isEmpty &&
            !appointment.doctorSpecialty.isEmpty
            else { return "Please choose a doctor" }
        
        guard !appointment.hospitalName.isEmpty,
            !appointment.hospitalLocation.isEmpty
            else {
                return "This doctor doesn't have a hospital assinged to them"
        }
        
        guard !appointment.date.isEmpty else {
            return "Please choose a date"
        }
        
        return nil
    }
    
    func submit(completion: @escaping ((String?) -> Void)) {
        let errorMessage = validate()
        guard errorMessage == nil
            else { completion(errorMessage); return }
        guard let currentPatient = PatientProfile.current.data
            else { completion("Request not possible for user"); return }
        appointment.ownerId = currentPatient.id
        appointment.ownerName = currentPatient.fullName
        appointment.status = Appointment.Status.pending.rawValue
        appointment.healthId = currentPatient.healthId
        
        let mutation = CreateAppointmentMutation(input: appointment)
        AWSClient.shared.mutate(mutation) { (error) in
            guard error == nil else {
                completion("Something went wrong, please try again")
                return
            }
            completion("Appointment Booked")
        }
    }
}
