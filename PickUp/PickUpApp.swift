//
//  PickUpApp.swift
//  PickUp
//
//  Created by jimenez on 3/17/22.
//

import SwiftUI
import Firebase

@main
struct PickUpApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
