//
//  FavoritesView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color(.secondarySystemBackground))
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        TopBarView(tab: "Favorites")
                        
                        Text("No favorites yet")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 16))
                            .padding(10)
                            .background(
                                Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                            )
                            .padding(.top, 200)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    FavoritesView()
}
