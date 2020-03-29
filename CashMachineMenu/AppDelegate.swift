//
//  AppDelegate.swift
//  CashMachineMenu
//
//  Created by Danya on 03/02/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let coordinator = MainCoordinatorAssembly().coordinator
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        coordinator.window = window
        coordinator.start()
        
        return true
    }



}

