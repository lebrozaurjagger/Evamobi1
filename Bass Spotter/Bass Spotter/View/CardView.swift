//
//  CardView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct CardView: View {
    @Binding var location: Location
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                
                VStack {
                    Button {
                        withAnimation {
                            location.isFav.toggle()
                        }
                    } label: {
                        Image(location.isFav == true ? "heart" : "heartempty")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .background(
                                Rectangle()
                                    .cornerRadius(16)
                                    .foregroundColor(.white)
                                    .frame(width: 28, height: 28)
                            )
                    }
                    
                    Spacer()
                }
            }
            .padding(18)
            .background(
                Rectangle()
                    .cornerRadius(24)
            )
            .frame(height: 180)
            
            HStack {
                Text(location.title)
                    .font(.custom("PlusJakartaSans-VariableFont_wght", size: 20))
                    .padding(.vertical, 4)
                
                Spacer()
                
                HStack {
                    Image("ion_fish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    
                    Text(String(location.countOfSpecies))
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
                
                Text(location.address)
                    .font(.custom("PlusJakartaSans-VariableFont_wght", size: 14))
                    .foregroundColor(.customBlue)
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    ExploreView()
}
