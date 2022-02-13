//
//  AppDelegate.swift
//  iOS4TestGit
//
//  Created by Zorin Dmitrii on 13.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .systemRed
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

