//
//  TestAppApp.swift
//  TestApp
//
//  Created by Андрей Гезет on 15.12.2023.
//

import SwiftUI

@main
struct TestAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                BookingMainView(title: "title")
            }
        }
    }
}

