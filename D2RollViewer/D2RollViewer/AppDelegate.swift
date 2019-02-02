//
//  AppDelegate.swift
//  D2RollViewer
//
//  Created by amoskvin on 1/28/19.
//  Copyright © 2019 D2RollViewer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
        guard let itemDetailViewController = window?.rootViewController as? ItemDetailViewController else { return true }
        do {
            itemDetailViewController.props = try ItemDetailViewController.Props(
                name: "Skull of Dire Ahamkar",
                description: "Description",
                classRestriction: .warlock,
                lightLevel: LightLevel(650),
                mobility: ArmorStat (0),
                resilence: ArmorStat(3),
                restoration: ArmorStat(0))
        } catch let exception {
            fatalError(String(describing: exception))
        }
        
        return true
    }
}

