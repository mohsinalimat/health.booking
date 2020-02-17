//  ProfileManager.swift
//  Health.booking
//
//  Created by Shak4l on 11/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class ProfileManager {
    
    var key: String
    private var client = AWSClient.shared
    
    // Profiles
    private var patientProfile = PatientProfile.current
    private var doctorProfile = DoctorProfile.current
    
    // Handler
    private var profileHandler:
    ((Swift.Result<LoginStep, LoginError>) -> Void)?
    
    init(key: String) {
        self.key = key
    }
    
    enum LoginError: Error {
        case invalidCredentials
        case invalidProfile
        case invalidData
        case unknownError
    }
    
    enum LoginStep: Equatable {
        case userValid
        case profileValid(name: String)
        case healthDataValid
        case completed
    }
}
// MARK: - LoginStep: CustomStringConvertible
extension ProfileManager.LoginStep: CustomStringConvertible {
    var description: String {
        switch self {
        case .userValid:
            return "Login you in"
        case .profileValid(let name):
            return "Welcome\n\(name)"
        case .healthDataValid:
            return "Data synced"
        case .completed:
            return "Continue"
        }
    }
}
// MARK: - LoginError: LocalizedError
extension ProfileManager.LoginError: LocalizedError {
    var localizedDescription: String {
        switch self {
        case .invalidCredentials:
            return "Invalid credentials"
        case .invalidProfile:
            return "Couldn't find your profile"
        case .invalidData:
            return "No data available for user"
        case .unknownError:
            return "Something went wrong please try again"
        }
    }
}

// MARK: - Public
extension ProfileManager {
    
    func initiate(handler: @escaping ((Swift.Result<LoginStep, LoginError>) -> Void)) {
        profileHandler = handler
        loginUser()
    }
}

// MARK: - Private
extension ProfileManager {
    
    private func loginUser() {
        let query = GetUserQuery(key: key)
        client.query(query) { (result) in
            switch result {
            case .success(let userData):
                guard let user = userData.getUser else {
                    self.profileHandler?(.failure(.invalidCredentials))
                    return
                }
                
                self.profileHandler?(.success(.userValid))
                if user.type == User.Kind.patient.description {
                    self.fetchPatient(user.id)
                }
                
                if user.type == User.Kind.doctor.description {
                    self.fetchDoctor(user.id)
                }
            case .failure(let error):
                self.profileHandler?(.failure(.unknownError))
                print("Error while fetching user")
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchPatient(_ patientId: String) {
        let patientQuery = GetPatientUserQuery(id: patientId)
        client.query(patientQuery) { (result) in
            switch result {
            case .success(let patientData):
                guard let patient = patientData.getPatientUser else {
                    self.profileHandler?(.failure(.invalidProfile))
                    return
                }
                
                self.profileHandler?(.success(.profileValid(name: patient.firstName)))
                self.patientProfile.data = Patient(query: patient)
                self.patientProfile.key = self.key
                self.fetchHealthProfile(patient.healthId)
                
            case .failure(let error):
                self.profileHandler?(.failure(.unknownError))
                print("Error while fetching patient")
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchHealthProfile(_ healthId: String) {
        let healthQuery = GetHealthInfoQuery(id: healthId)
        client.query(healthQuery) { (result) in
            switch result {
            case .success(let healthData):
                guard let healthInfo = healthData.getHealthInfo else {
                    self.profileHandler?(.failure(.invalidData))
                    return
                }
                
                self.patientProfile.healthInfo = HealthInfo(query: healthInfo)
                self.profileHandler?(.success(.completed))
            case .failure(let error):
                self.profileHandler?(.failure(.unknownError))
                print("Error while fetching health data")
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchDoctor(_ doctorId: String) {
        let query = GetDoctorQuery(id: doctorId)
        client.query(query) { (result) in
            switch result {
            case .success(let doctorData):
                guard let doctor = doctorData.getDoctor else {
                    self.profileHandler?(.failure(.invalidProfile))
                    return
                }
                
                self.doctorProfile.data = Doctor(query: doctor)
                self.doctorProfile.key = self.key
                self.profileHandler?(.success(.profileValid(name: doctor.name)))
                self.fetchHospital(doctor.hospitalId)
            case .failure(let error):
                self.profileHandler?(.failure(.unknownError))
                print("Error while fetching doctor")
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchHospital(_ hospitalId: String) {
        let query = GetHospitalQuery(id: hospitalId)
        client.query(query) { (result) in
            switch result {
            case .success(let hospitalData):
                
                guard let hospital = hospitalData.getHospital else {
                    self.profileHandler?(.failure(.invalidData))
                    return
                }
                
                self.doctorProfile.hospital = Hospital(query: hospital)
                self.profileHandler?(.success(.completed))
            case .failure(let error):
                self.profileHandler?(.failure(.unknownError))
                print("Error while fetching hospital")
                print(error.localizedDescription)
            }
        }
    }
}
