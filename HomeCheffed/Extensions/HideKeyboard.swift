//
//  HideKeyboard.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
