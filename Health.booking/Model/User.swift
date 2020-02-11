//  User.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class User {
    
    var kind: Kind
    
    private var _identification: String? = nil
    var identification: String? {
        get { _identification }
        set { _identification = newValue?.base64Encoded() }
    }

    private var _password: String? = nil
    var password: String? {
        get { _password }
        set { _password = newValue?.base64Encoded() }
    }
    
    init(kind: Kind) {
        self.kind = kind
    }
    
    enum Kind: Int {
        case patient = 0
        case doctor
        
        var description: String {
            String(describing: self.self).capitalized
        }
    }
}
