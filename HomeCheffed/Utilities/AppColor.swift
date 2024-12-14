//
//  AppColor.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/10/24.
//

import SwiftUI

enum AppColor: String, CaseIterable {
    
    case red, orange, green, mint, teal, cyan, blue, indigo, purple, pink, brown, primary

}

extension AppColor {
    var color: Color {
        switch self {
        case .red:
            return .red
        case .orange:
            return .orange
        case .green:
            return .green
        case .mint:
            return .mint
        case .teal:
            return .teal
        case .cyan:
            return .cyan
        case .blue:
            return .blue
        case .indigo:
            return .indigo
        case .purple:
            return .purple
        case .pink:
            return .pink
        case .brown:
            return .brown
        case .primary:
            return .primary
        }
    }
}
