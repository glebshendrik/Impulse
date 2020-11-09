//
//  AppDelegate.swift
//  Impulse
//
//  Created by Gleb Shendrik on 07.10.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UIDevice.current.isBatteryMonitoringEnabled = true
        configureAnalytics()
        configureAppearance()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    // MARK: - Configure Analytics
    private func configureAnalytics() {
//        FirebaseApp.configure()
        
        // Initializing the AppMetrica SDK.
//        let configuration = YMMYandexMetricaConfiguration.init(apiKey: "")
//        configuration?.crashReporting = false
//        YMMYandexMetrica.activate(with: configuration!)
    }
    
    // MARK: - Configure Appearance
    
    private func configureAppearance() {
        configureNavigationBarAppearance()
        configureTabBarAppearance()
        configureTabBarItemApperance()
    }
    
    private func configureNavigationBarAppearance() {
        let appearance = UINavigationBar.appearance()
        appearance.setBackgroundImage(UIImage(), for: .default)
        appearance.shadowImage = UIImage()
        appearance.isTranslucent = true
        appearance.tintColor = UIColor.white
        appearance.largeTitleTextAttributes = [.font: AppFont.Roboto.bold(size: 34), .foregroundColor: UIColor.white]
        appearance.titleTextAttributes = [.font: UIFont.systemFont(ofSize: 17), .foregroundColor: UIColor.white]
    }
    
    private func configureTabBarAppearance() {
        let appearance = UITabBar.appearance()
        appearance.barTintColor = AppColor.purple
        appearance.unselectedItemTintColor = AppColor.lightPurple
        appearance.tintColor = UIColor.white
        appearance.isTranslucent = false
    }
    
    private func configureTabBarItemApperance() {
        let appearance = UITabBarItem.appearance()
        let font = UIFont.systemFont(ofSize: 10)
        appearance.setTitleTextAttributes([.font : font, .foregroundColor: AppColor.lightPurple], for: .normal)
        appearance.setTitleTextAttributes([.font : font, .foregroundColor: UIColor.white], for: .selected)
    }

}

