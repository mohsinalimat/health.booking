//  AuthManager.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

protocol AuthManager {
    
    var user: User? { get set }
    
    func isValid(completion: ((Result<String, Error>) -> Void))
    func isIdentificationValid(_ identification: String?) -> Bool
}

extension AuthManager {
    func isPasswordValid(_ password: String?) -> Bool {
        guard let pass = password else { return false }
        let passTest = NSPredicate(format: "SELF MATCHES %@",
                                   "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passTest.evaluate(with: pass)
    }
}

class PatientAuthManager: AuthManager {
    
    var user: User?
    
    func isValid(completion: ((Result<String, Error>) -> Void)) {
        guard let patient = user as? PatientUser else {
            return
        }
        
        guard isIdentificationValid(patient.identification) else {
            return
        }
        
        guard isPasswordValid(patient.password) else {
            return
        }
        
        // TODO: Encrypt id & password to fetch data
        completion(.success(""))
    }
    
    func isIdentificationValid(_ identification: String?) -> Bool {
        guard let email = identification else { return false }
        let emailTest = NSPredicate(format: "SELF MATCHES %@",
                                    "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
        return emailTest.evaluate(with: email)
    }
}

class DoctorAuthManager: AuthManager {
    
    var user: User?
    
    func isValid(completion: ((Result<String, Error>) -> Void)) {
        guard let doctor = user as? DoctorUser else { return }
        
        guard isIdentificationValid(doctor.identification) else {
            return
        }
        
        guard isPasswordValid(doctor.password) else {
            return
        }
        
        // TODO: Encrypt id & password to fetch data
        completion(.success(""))
    }
    
    func isIdentificationValid(_ identification: String?) -> Bool {
        guard let hospitalId = identification else { return false }
        let regex = "^[A-Z0-9a-z]+-[A-Za-z_]+-[0-9]+.{2,64}$"
        let idTest = NSPredicate(format: "SELF MATCHES %@",
                                 regex)
        return idTest.evaluate(with: hospitalId)
    }
}
