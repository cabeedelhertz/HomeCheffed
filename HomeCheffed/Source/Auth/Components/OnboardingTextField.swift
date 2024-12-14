//
//  OnboardingTextField.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct OnboardingTextField: View {
    
    let type: TextFieldType
    
    @State var isSecure: Bool = false
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: type.icon)
                .font(.headline)
                .foregroundColor(.secondary)
            
            VStack {
                HStack {
                    if !self.isSecure {
                        TextField(type.rawValue.capitalized, text: $text)
                            .autocorrectionDisabled(true)
                            .keyboardType(type == .email ? .emailAddress : .default)
                            .textInputAutocapitalization(type == .fullName ? .words : .never)
                    } else {
                        SecureField(type.rawValue.capitalized, text: $text)
                    }
                    
                    if type == .password {
                        Button {
                            self.isSecure.toggle()
                        } label: {
                            Image(systemName: self.isSecure ? "eye.slash" : "eye")
                                .font(.headline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                Divider()
            }
        }
        .padding(.bottom)
    }
}

struct OnboardingTextField_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTextField(type: .email, text: .constant("baher@mail.com"))
    }
}
