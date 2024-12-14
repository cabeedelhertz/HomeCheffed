//
//  TextFieldType.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import Foundation

enum TextFieldType: String {
    case email
    case password
    case fullName = "Full Name"
    case username
}

extension TextFieldType {
    var icon: String {
        switch self {
        case .email:
            return "envelope"
        case .password:
            return "lock"
        case .fullName:
            return "person"
        case .username:
            return "at"
        }
    }
}
