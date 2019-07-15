//
//  AppDelegate.swift
//  FlutterHybridTemplate
//
//  Created by Baird-weng on 2019/7/15.
//  Copyright © 2019 bw. All rights reserved.
//

import UIKit

import Flutter
import FlutterPluginRegistrant // Only if you have Flutter Plugins.

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    var flutterEngine : FlutterEngine?;
    // Only if you have Flutter plugins.
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil);
        self.flutterEngine?.run(withEntrypoint: nil);
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let flutterViewController = FlutterViewController()
        flutterViewController.view.backgroundColor = .red
        window?.rootViewController = flutterViewController
        
        window?.makeKeyAndVisible()
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }
    
}

