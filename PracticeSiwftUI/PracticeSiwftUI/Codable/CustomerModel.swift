//
//  CustomerModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 21/3/23.
//

import Foundation

struct CustomerModel: Identifiable, Decodable {
    let id: String
    let name: String
    let point: Int
    let isPremium: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case point
        case isPremium
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.point = try container.decode(Int.self, forKey: .point)
        self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
    }
}
