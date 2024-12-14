//
//  OnboardingSubmitButton.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct OnboardingSubmitButton: View {
    
    let screenType: OnboardingScreenType
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(screenType.rawValue.capitalized)
                .padding()
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color(UIColor.systemGray6))
        }
        .background(.primary)
        .cornerRadius(12)
        .padding(.vertical)
    }
}

struct OnboardingSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSubmitButton(screenType: .login, action: {})
    }
}
