//
//  DrinksShopApp.swift
//  DrinksShop
//
//  Created by kekeli on 09/03/2023.
//

import SwiftUI
import FirebaseCore
import Firebase
@main
struct DrinksShopApp: App {
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject (BasketViewModel())
                .environmentObject (UserRepository())
        }
    }
}


class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Initialize Firebase
        FirebaseApp.configure()
        
        // Your other app setup code...
        
        return true
    }
}
