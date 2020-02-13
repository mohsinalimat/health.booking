//  AppDelegate.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit
import AWSAppSync

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Setup appsync
        do {
            let cachConfig = try AWSAppSyncCacheConfiguration()
            let appSyncConfig = try AWSAppSyncClientConfiguration(
                appSyncServiceConfig: AWSAppSyncServiceConfig(),
                cacheConfiguration: cachConfig
            )
            
            AWSClient.shared.appSync = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            
            print("AppSync initialization successs!")
        } catch {
            print("Failed to initialize AWSAppSync")
            print(error)
        }
        
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        AWSClient.shared.appSync = nil
    }
}

