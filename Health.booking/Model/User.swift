//  User.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class User {
    var identification: String?
    var password: String?
    var kind: Kind
    
    init(kind: Kind) {
        self.kind = kind
        self.identification = nil
        self.password = nil
    }
    
    enum Kind: Int {
        case patient = 0
        case doctor
    }
}
