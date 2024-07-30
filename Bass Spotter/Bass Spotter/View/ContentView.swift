//
//  ContentView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", image: "")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", image: "")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", image: "")
                }
        }
    }
}

#Preview {
    ContentView()
}
