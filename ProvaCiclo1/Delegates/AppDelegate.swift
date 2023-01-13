//
//  AppDelegate.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

let defString = String(stringLiteral: "")

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        window?.rootViewController = UINavigationController(rootViewController: HomeScreenViewController())
        
        return true
    }
}

