//
//  CustomNavigationBar.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import SwiftUI

struct CustomNavigationBar: ViewModifier {
    
    let title: String
    
    func body(content: Content) -> some View {
        content
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(UIColor.systemGray6), ignoresSafeAreaEdges: .all)
            .safeAreaInset(edge: .top) {
                Color.clear
                    .frame(height: 0)
                    .background(.bar)
                    .border(.black)
            }
    }
}
