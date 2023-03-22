//
//  CustomerModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 21/3/23.
//

import Foundation

//struct CustomerModel: Identifiable, Decodable, Encodable {
// Codable = Decodable + Encodable
struct CustomerModel: Identifiable, Codable {
    let id: String
    let name: String
    let point: Int
    let isPremium: Bool
    
//    enum CodingKeys: String, CodingKey {
//        case id
//        case name
//        case point
//        case isPremium
//    }
//
//    init(id: String, name: String, point: Int, isPremium: Bool) {
//        self.id = id
//        self.name = name
//        self.point = point
//        self.isPremium = isPremium
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.id = try container.decode(String.self, forKey: .id)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.point = try container.decode(Int.self, forKey: .point)
//        self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.id, forKey: .id)
//        try container.encode(self.name, forKey: .name)
//        try container.encode(self.point, forKey: .point)
//        try container.encode(self.isPremium, forKey: .isPremium)
//    }
}
