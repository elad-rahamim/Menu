//
//  AppDelegate.swift
//  Slide-left-menu
//
//  Created by Elad Rahmim on 5/4/15.
//  Copyright (c) 2015 Elad Rahmim. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?
    var Container:MMDrawerController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application 
        
     
        
        
        //Page View
        var HomeView: HomeViewController? = HomeViewController(nibName: "HomeViewController", bundle: nil)
        var AboutView = AboutViewController(nibName: "AboutViewController", bundle: nil)
        
        //Menu View
        var MenuView = MenuTableViewController(nibName: "MenuTableViewController", bundle: nil)
        
        var Home_Page = UINavigationController(rootViewController: HomeView!)
        var LeftMenu = UINavigationController(rootViewController: MenuView)
        
        Container = MMDrawerController(centerViewController: Home_Page, leftDrawerViewController: LeftMenu)
        Container!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.PanningCenterView;
        Container!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.PanningCenterView;
        
        self.window!.rootViewController = Container
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

