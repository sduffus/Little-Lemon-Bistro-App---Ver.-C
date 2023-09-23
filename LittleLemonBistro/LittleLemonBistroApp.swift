//
//  LittleLemonBistroApp.swift
//  LittleLemonBistro
//
//  Created by Shaun Duffus on 2023-01-05.
//

import SwiftUI

@main
struct LittleLemonBistroApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
