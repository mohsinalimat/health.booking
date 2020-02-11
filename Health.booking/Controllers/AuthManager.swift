//  AuthManager.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class AuthManager {
    
    var user: User
    
    init(user: User) {
        self.user = user
    }
    
    enum AuthError: Error {
        case invalidPassword
        case invalidEmail
        case invalidHospitalId
    }
}

// MARK: LocalizedError
extension AuthManager.AuthError: LocalizedError {
    var localizedDescription: String {
        switch self {
        case .invalidPassword:
            return "The password needs to be longer than 8 characters and contain 1 uppercase, 1 special symbol"
        case .invalidEmail:
            return "The email is in an invalid format"
        case .invalidHospitalId:
            return "The hospital ID doesn't match [Hospita name]-[User full name]-[Hospital Code] format"
        }
    }
}

// MARK: - Public methods
extension AuthManager {
    /// Goes trough the User and checks if the inputed
    /// data is in a valid format or not
    /// - Parameter completion: Returns a key for success or error for failure
    func isValid(completion: @escaping ((Result<String, AuthError>) -> Void)) {
        DispatchQueue.global().async {
            let userKind = self.user.kind
            guard self.isPasswordValid(self.user.password) else {
                completion(.failure(AuthError.invalidPassword))
                return
            }
            switch userKind {
            case .doctor:
                guard self.isValidEmail(self.user.identification) else {
                    completion(.failure(AuthError.invalidEmail))
                    return
                }
            case .patient:
                guard self.isHospitalIdValid(self.user.identification) else {
                    completion(.failure(AuthError.invalidHospitalId))
                    return
                }
            }
            
            // Encrypt identification & password
            let key = self.encrypt(identification: self.user.identification,
                                   password: self.user.password)
            
            // Return key
            completion(.success(key))
        }
    }
}

// MARK: - Private methods
extension AuthManager {
    /// Checks if password is valid using the regex
    /// 1 Uppercase, 1 symbol & longer than 8 chars
    /// - Parameter password: The password string
    private func isPasswordValid(_ password: String?) -> Bool {
        guard let pass = password, !pass.isEmpty else { return false }
        let passTest = NSPredicate(format: "SELF MATCHES %@",
                                   "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passTest.evaluate(with: pass)
    }
    
    
    /// Checks if email is valid using standard email regex
    /// - Parameter email: The email string
    private func isValidEmail(_ email: String?) -> Bool {
        guard let email = email else { return false }
        let emailTest = NSPredicate(format: "SELF MATCHES %@",
                                    "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
        return emailTest.evaluate(with: email)
    }
    
    
    /// Checks if the Hospital Id is valid using the following format
    /// [Hospital Name] - [User Full Name] - [Hospital Code] (2-64 chars)
    /// - Parameter id: The hospitalID of the individual
    private func isHospitalIdValid(_ id: String?) -> Bool {
        guard let hospitalId = id else { return false }
        let regex = "^[A-Z0-9a-z]+-[A-Za-z_]+-[0-9]+.{2,64}$"
        let idTest = NSPredicate(format: "SELF MATCHES %@",
                                 regex)
        return idTest.evaluate(with: hospitalId)
    }
    
    private func encrypt(identification: String, password: String) -> String {
        // TODO: Complete encryption of id & password
        return "some_random_key_for_testing"
    }
}
