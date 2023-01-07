//
//  TabBarView.swift
//  Kopilka
//
//  Created by macbook on 07.01.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        
        TabView {
            EditView()
                .tabItem{
                    Text("edit")
                }
            AddView()
                .tabItem{
                    Text("add")
                }
            HomeView()
                .tabItem{
                    Text("home")
                }
            SettingsView()
                .tabItem{
                    Text("settings")
                }
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
