//
//  AppDelegate.swift
//  XRSwift
//
//  Created by 朵朵 on 2022/1/11.
//

import UIKit
import CoreData


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.backgroundColor = .white
        window?.rootViewController = BaseTabBarController()
        window?.makeKeyAndVisible()
        return true
    }

    

}

