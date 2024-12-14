//
//  TabViewItem.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/10/24.
//


import Foundation

enum TabViewItem: String, CaseIterable {
    case home
    case create
    case profile
    
    var image: String {
        switch self {
        case .home:
            return "house.fill"
        case .create:
            return "plus"
        case .profile:
            return "person"
        }
    }
}
