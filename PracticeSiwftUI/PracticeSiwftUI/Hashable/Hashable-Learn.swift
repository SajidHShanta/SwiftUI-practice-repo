//
//  Hashable-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 24/2/23.
//

import SwiftUI

struct MyHashableModel: Hashable {
    let title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
//        hasher.combine(title + subtitle)
    }

}

struct Hashable_Learn: View {
    let data: [MyHashableModel] = [
        MyHashableModel(title: "one"),
        MyHashableModel(title: "two"),
        MyHashableModel(title: "three"),
        MyHashableModel(title: "four"),
    ]
    
    var body: some View {
        VStack {
            ForEach(data, id: \.self) { item in
                Text(item.title)
            }
        }
    }
}

struct Hashable_Learn_Previews: PreviewProvider {
    static var previews: some View {
        Hashable_Learn()
    }
}
