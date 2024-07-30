//
//  OnboardingViewModel.swift
//  Bass Spotter
//
//  Created by Phillip on 30.07.2024.
//

import SwiftUI
import Combine

class OnboardingViewModel: ObservableObject {
    private var universalKey = "bZoP9ayb2J"
    
    @Published var hasCompletedOnboarding: Bool {
        didSet {
            UserDefaults.standard.set(hasCompletedOnboarding, forKey: universalKey)
        }
    }
    
    init() {
        self.hasCompletedOnboarding = UserDefaults.standard.bool(forKey: universalKey)
    }
}
