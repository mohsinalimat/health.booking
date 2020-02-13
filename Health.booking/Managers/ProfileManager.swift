//  ProfileManager.swift
//  Health.booking
//
//  Created by Shak4l on 11/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class ProfileManager {
    
    var key: String
    private var client = AWSClient.shared
    
    init(key: String) {
        self.key = key
    }
}
