//
//  SignInView.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct SignInView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    @State private var user: UserInputData = UserInputData(email: "", password: "")
    @State private var isSecure: Bool = true
    
    @FocusState private var isTextFieldFocused: Bool
    
    var forgotPasswordButton: some View {
        Button("Forgot Password?") {
            // Forgot Password Action
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    var body: some View {
        NavigationView {
            ScrollViewReader { _ in
                OnboardingImage(screenType: .login)
                OnboardingTitle(screenType: .login)
                
                OnboardingTextField(type: .email, text: $user.email)
                OnboardingTextField(type: .password, isSecure: true, text: $user.password)
                
                forgotPasswordButton
                
                Spacer()
                
                OnboardingSubmitButton(screenType: .login) {
                    authViewModel.login(withUser: user)
                    dismiss()
                }
                
                HStack {
                    Text("New to QuoteClub?")
                        .foregroundColor(.secondary)
                    
                    NavigationLink("Register") {
                        RegisterView()
                    }
                }
                
            }
            .onTapGesture {
                self.hideKeyboard()
            }
            .scrollIndicators(.hidden)
            .scrollDisabled(!isTextFieldFocused)
            .padding(.horizontal)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
