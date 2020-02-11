//  Extension.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

extension UIColor {
    
    static let lightBackground =
        UIColor(named: "lightBackground")!
    
    static let tableCellBackground =
        UIColor(named: "tableCellBackground")!
    
    
    static let backgroundColor: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        }
        return UIColor.white
    }()
    
}
