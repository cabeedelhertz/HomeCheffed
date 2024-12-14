//
//  RegisterBackButton.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct RegisterBackButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "arrow.left.circle.fill")
                .font(.title)
                .tint(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .contentShape(Rectangle())
        }
    }
}

struct RegisterBackButton_Previews: PreviewProvider {
    static var previews: some View {
        RegisterBackButton(action: {})
    }
}
