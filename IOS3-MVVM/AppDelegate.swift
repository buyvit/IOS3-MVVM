//
//  AppDelegate.swift
//  IOS3-MVVM
//
//  Created by Vitaly Buylushkin on 05.11.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationController = UINavigationController(rootViewController: ViewController())
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }

  
}

