//
//  OnboardingImage.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct OnboardingImage: View {
    
    let screenType: OnboardingScreenType
    
    private var image: Image {
        switch screenType {
        case .login:
            return Image("Login")
        case .register:
            return Image("Register")
        }
    }
    
    var body: some View {
        image.onboardingImage()
    }
}

extension Image {
    func onboardingImage() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
}

struct OnboardingImage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingImage(screenType: .login)
    }
}
