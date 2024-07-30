//
//  ExploreView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color(.secondarySystemBackground))
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        TopBarView(tab: "Explore fishing ponds")
                        
                        Text("Fish species")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 24))
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .shadow(radius: 4)
                                        .frame(width: 90, height: 100)
                                        .cornerRadius(24)
                                    
                                    Text("All")
                                        .font(.custom("PlusJakartaSans-VariableFont_wght", size: 16))
                                }
                                
                                FilterSpecies(name: "Bass", image: "bass")
                                FilterSpecies(name: "Pike", image: "pike")
                                FilterSpecies(name: "Walleye", image: "walleye")
                                FilterSpecies(name: "Carp", image: "carp")
                                FilterSpecies(name: "Trout", image: "trout")
                                FilterSpecies(name: "Salmon", image: "salmon")
                            }
                        }
                        .padding(.trailing, -16)
                        
                        Text("Fishing ponds")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 24))
                            .padding(.top, 32)
                        
                        VStack {
                            NavigationLink(destination: FavoritesView()) {
                                CardView(location: "Lake Ontario", exactLocation: "Toronto Waterfront, Toronto, ON", image: "LakeOntario", countOfSpecies: 4, isFav: 0)
                            }
                            NavigationLink(destination: FavoritesView()) {
                                CardView(location: "Toronto Islands", exactLocation: "Toronto Islands, Toronto, ON", image: "TorontoIslands", countOfSpecies: 3, isFav: 0)
                            }
                        }
                        .foregroundColor(.black)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}

struct FilterSpecies: View {
    @State var name: String
    @State var image: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .shadow(radius: 4)
                .frame(width: 90, height: 100)
                .cornerRadius(24)
            
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                
                Text(name)
                    .font(.custom("PlusJakartaSans-VariableFont_wght", size: 16))
            }
        }
    }
}
