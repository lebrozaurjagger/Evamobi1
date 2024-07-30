//
//  FilterModel.swift
//  Bass Spotter
//
//  Created by Phillip on 30.07.2024.
//

import SwiftUI

struct Filter: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
}

let filters = [
    Filter(title: "Bass",
           imageName: "bass"),
    
    Filter(title: "Pike",
           imageName: "pike"),
    
    Filter(title: "Walleye",
           imageName: "walleye"),
    
    Filter(title: "Carp",
           imageName: "carp"),
    
    Filter(title: "Trout",
           imageName: "trout"),
    
    Filter(title: "Salmon",
           imageName: "salmon")
]
