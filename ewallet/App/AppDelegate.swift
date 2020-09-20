//
//  AppDelegate.swift
//  ewallet
//
//  Created by Vitor Leonel on 20/09/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = FeedController()
        
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }

}

