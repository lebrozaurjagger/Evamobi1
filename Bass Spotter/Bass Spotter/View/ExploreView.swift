//
//  ExploreView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct ExploreView: View {
    @State var selectedButton: Int? = 1
    
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
                            .padding(.bottom)
                        
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
                                
                                Button {
                                    withAnimation {
                                        
                                    }
                                } label: {
                                    FilterSpecies(name: "Bass", image: "bass")
                                }
                                Button {
                                    withAnimation {
                                        
                                    }
                                } label: {
                                    FilterSpecies(name: "Pike", image: "pike")
                                }
                                Button {
                                    withAnimation {
                                        
                                    }
                                } label: {
                                    FilterSpecies(name: "Walleye", image: "walleye")
                                }
                                Button {
                                    withAnimation {
                                        
                                    }
                                } label: {
                                    FilterSpecies(name: "Carp", image: "carp")
                                }
                                Button {
                                    withAnimation {
                                        
                                    }
                                } label: {
                                    FilterSpecies(name: "Trout", image: "trout")
                                }
                                Button {
                                    withAnimation {
                                        
                                    }
                                } label: {
                                    FilterSpecies(name: "Salmon", image: "salmon")
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                        .padding(.horizontal, -16)
                        
                        Text("Fishing ponds")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 24))
                            .padding(.top, 32)
                        
                        VStack {
                            ForEach(locations) { location in
                                NavigationLink(destination: LocationView()) {
                                    CardView(location: location.title, exactLocation: location.address, image: location.imageName, countOfSpecies: location.countOfSpecies, isFav: false)
                                }
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
