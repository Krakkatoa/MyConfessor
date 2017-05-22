//
//  AppDelegate.swift
//  MyConfessor
//
//  Created by Laura Paxton on 9/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit
import Parse
import Bolts


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    //--------------------------------------
    // MARK: - UIApplicationDelegate
    //--------------------------------------
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Enable storing and querying data from Local Datastore.
        // Remove this line if you don't want to use Local Datastore features or want to use cachePolicy.
       Parse.enableLocalDatastore()
        
        // ****************************************************************************
        // Uncomment this line if you want to enable Crash Reporting
     // ParseCrashReporting.enable()
        //
        
        
        // Uncomment and fill in with your Parse credentials:
        Parse.setApplicationId("HTYnotuaSnkT4xrZxslB497gb7Q5JGMbpOBnJ0To",
            clientKey: "56xM6nJjCYMArgN4c0gsywG7J9OzOnobilwBpru5")
        
        
        // If you are using Facebook, uncomment and add your FacebookAppID to your bundle's plist as
        // described here: https://developers.facebook.com/docs/getting-started/facebook-sdk-for-ios/
        // Uncomment the line inside ParseStartProject-Bridging-Header and the following line here:
        // PFFacebookUtils.initializeFacebook()
        // ****************************************************************************      //  
        let notificationType: UIUserNotificationType = [UIUserNotificationType.alert, UIUserNotificationType.badge, UIUserNotificationType.sound]
        
        let settings: UIUserNotificationSettings = UIUserNotificationSettings(types: notificationType, categories: nil)
        UIApplication.shared.registerUserNotificationSettings(settings)
        UIApplication.shared.registerForRemoteNotifications()
        
        
        //This creates a identifier for each device, so we know which user is who
        let defaults = UserDefaults.standard
        defaults.set(UIDevice.current.identifierForVendor!.uuidString, forKey: "UserIdentifier")
        
        return true
    }
    
    
    
    //Push notifications
    func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings) {
        UIApplication.shared.registerForRemoteNotifications()
        
    }
    
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print(error.localizedDescription)
        print("could not register: \(error)")
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data){
        let currentInstallation: PFInstallation = PFInstallation.current()
        currentInstallation.setDeviceTokenFrom(deviceToken)
        //  currentInstallation.saveInBackground() This has been creating an error.
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        PFPush.handle(userInfo)
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

