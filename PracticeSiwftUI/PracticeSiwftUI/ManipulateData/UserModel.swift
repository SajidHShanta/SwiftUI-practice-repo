//
//  UserModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 7/3/23.
//

import Foundation

struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String?
    let points: Int
    let isVerified: Bool
}
