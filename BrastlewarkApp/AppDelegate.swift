//
//  AppDelegate.swift
//  BrastlewarkApp
//
//  Created by Felipe Ferrari on 25/08/2018.
//  Copyright © 2018 Felipe Ferrari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var navigation: Navigation!

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		let navigation = createNavigation()
		let splash = SplashWireframe(navigation: navigation)
		try! splash.setAsRootWireframe()
		return true
	}

	func createNavigation() -> Navigation {
		let window = UIWindow (frame: UIScreen.main.bounds)
		window.makeKeyAndVisible()

		let navigation = Navigation (window: window)
		self.navigation = navigation

		return navigation
	}

}

