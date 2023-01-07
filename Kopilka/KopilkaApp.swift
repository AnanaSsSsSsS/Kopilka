//
//  KopilkaApp.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import SwiftUI

@main
struct KopilkaApp: App {
    
    @StateObject var kopilkaViewModel: KopilkaViewModel = KopilkaViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {  // теперь все вью в проекте будут
                ContentView()  // старотовое View
            }
            .environmentObject(kopilkaViewModel)
        }
    }
}
