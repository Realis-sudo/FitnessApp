//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Zouz Bekdache on 1/1/2025.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ProfileView()
                .tag( "Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("History")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
