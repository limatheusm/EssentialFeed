//
//  AppDelegate.swift
//  EssentialApp
//
//  Created by Matheus Lima on 7/30/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)

#if DEBUG
        configuration.delegateClass = DebuggingSceneDelegate.self
#endif

        return configuration
    }

}
