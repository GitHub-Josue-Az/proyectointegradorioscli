//
//  AppDelegate.swift
//  asdad
//
//  Created by JosueAlva on 18/06/19.
//  Copyright © 2019 JosueAlva. All rights reserved.
//

import UIKit
import PushNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    let pushNotifications = PushNotifications.shared
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.pushNotifications.start(instanceId: "PUSHER_NOTIF_INSTANCE_ID")
        self.pushNotifications.registerForRemoteNotifications()
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        self.pushNotifications.registerDeviceToken(deviceToken) {
            try? self.pushNotifications.subscribe(interest: "orders_" + AppMisc.USER_ID)
        }
    }
    
    
}




