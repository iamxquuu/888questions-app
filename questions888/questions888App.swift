//
//  questions888App.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//

import SwiftUI
import GoogleMobileAds


@main
struct questions888App: App {

    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

