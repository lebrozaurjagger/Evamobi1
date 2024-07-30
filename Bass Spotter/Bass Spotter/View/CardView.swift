//
//  CardView.swift
//  Bass Spotter
//
//  Created by Phillip on 29.07.2024.
//

import SwiftUI

struct CardView: View {
    @State var location: String
    @State var exactLocation: String
    @State var image: String
    @State var countOfSpecies: Int
    @State var isFav: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                
                VStack {
                    Image("heartempty")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .background(
                            Rectangle()
                                .cornerRadius(16)
                                .foregroundColor(.white)
                                .frame(width: 28, height: 28)
                        )
                    
                    Spacer()
                }
            }
            .padding(18)
            .background(
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(24)
            )
            .frame(width: 358, height: 180)
            
            HStack {
                Text(location)
                    .font(.custom("PlusJakartaSans-VariableFont_wght", size: 20))
                    .padding(.vertical, 4)
                
                Spacer()
                
                HStack {
                    Image("ion_fish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    
                    Text(String(countOfSpecies))
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
                
                Text(exactLocation)
                    .font(.custom("PlusJakartaSans-VariableFont_wght", size: 14))
                    .foregroundColor(.customBlue)
            }
        }
        .padding()
    }
}

#Preview {
    CardView(location: "TempLocation", exactLocation: "TempExactLocation", image: "LakeOntario", countOfSpecies: 9, isFav: 0)
}
