//
//  AppDelegate.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navigationRootVC = UINavigationController(rootViewController: HomePageViewController())
        window.rootViewController = navigationRootVC // Your initial view controller.
        window.makeKeyAndVisible()
        self.window = window
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        return true
    }



}

