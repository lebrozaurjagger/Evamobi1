//
//  LocationView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(.secondarySystemBackground))
            
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 32, height: 32)
                                .foregroundColor(.white)
                            
                            Image("arrow-down")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 24)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 32, height: 32)
                                .foregroundColor(.white)
                            
                            Image("heartempty")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 24)
                        }
                    }
                    .padding(.horizontal)
                    
                    Image("LakeOntario")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 240)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Lake Ontario")
                                .font(.custom("PlusJakartaSans-VariableFont_wght", size: 32))
                            
                            Spacer()
                            
                            HStack {
                                Image("ion_fish")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 16, height: 16)
                                
                                Text("4")
                                    .foregroundColor(.customBlue)
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 8)
                            .background(
                                Rectangle()
                                    .cornerRadius(16)
                                    .foregroundColor(.customLightBlue)
                            )
                        }
                        
                        HStack {
                            Image("Location")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                            
                            Text("exactLocation")
                                .font(.custom("PlusJakartaSans-VariableFont_wght", size: 14))
                                .foregroundColor(.customBlue)
                        }
                        
                        Text("Fishes found")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 24))
                            .padding(.vertical)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                FilterSpecies(name: "Bass", image: "bass")
                                FilterSpecies(name: "Bass", image: "bass")
                                FilterSpecies(name: "Bass", image: "bass")
                                FilterSpecies(name: "Bass", image: "bass")
                            }
                        }
                        .padding(.trailing, -16)
                        
                        Text("Description")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 24))
                            .padding(.top, 16)
                            .padding(.bottom, 4)
                        
                        Text("One of the Great Lakes, Lake Ontario offers vast fishing opportunities. The Toronto waterfront is a popular spot, providing beautiful views of the city skyline while you fish.")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 16))
                        
                        Text("Hot seasons")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 24))
                            .padding(.top, 16)
                            .padding(.bottom, 4)
                        
                        Text("May-Oct")
                            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 16))
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    LocationView()
}
