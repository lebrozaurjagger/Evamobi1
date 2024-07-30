//
//  SettingsView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(.secondarySystemBackground))
            
            VStack(alignment: .leading) {
                TopBarView(tab: "Settings")
                
                VStack(alignment: .leading, spacing: 32) {
                    StackCell(icon: "Send", name: "Share App")
                    StackCell(icon: "Shield", name: "Rate Us")
                    StackCell(icon: "Star", name: "Privacy Policy")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    SettingsView()
}

struct StackCell: View {
    @State var icon: String
    @State var name: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .background(
                    Rectangle()
                        .foregroundColor(.customLightBlue)
                        .frame(width: 24, height: 24)
                        .cornerRadius(16)
                        .foregroundColor(.blue)
                )
            
            Text(name)
                .font(.custom("PlusJakartaSans-VariableFont_wght", size: 16))
        }
    }
}
