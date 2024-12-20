//
//  OnboardingTitle.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct OnboardingTitle: View {
    let screenType: OnboardingScreenType
    
    private var title: Text {
        switch screenType {
        case .login:
            return Text("Login")
        case .register:
            return Text("Register")
        }
    }
    
    var body: some View {
        title.onboardingTitle()
    }
}

extension Text {
    func onboardingTitle() -> some View {
        self
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 24)
    }
}

struct OnboardingTitle_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTitle(screenType: .login)
    }
}
