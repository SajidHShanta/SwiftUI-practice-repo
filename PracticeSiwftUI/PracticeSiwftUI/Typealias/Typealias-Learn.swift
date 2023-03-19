//
//  Typealias-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 19/3/23.
//

import SwiftUI

struct MovieModel {
    let title: String
    let director: String
    let count: Int
}

//struct TVModel {
//    let title: String
//    let director: String
//    let count: Int
//}

typealias TVModel = MovieModel

struct Typealias_Learn: View {
    @State var item1: MovieModel = MovieModel(title: "Damal", director: "Raihan Rafi", count: 4)
    
    @State var item2: TVModel = TVModel(title: "Natok Name", director: "Bappi", count: 7)
    
    var body: some View {
        HStack {
            VStack {
                Text("Movie")
                    .font(.headline)
                Text(item1.title)
                Text(item1.director)
                Text("\(item1.count)")
            }
            
            Spacer()
            
            VStack {
                Text("TV Show")
                    .font(.headline)
                Text(item2.title)
                Text(item2.director)
                Text("\(item2.count)")
            }
        }
        .padding()
    }
}

struct Typealias_Learn_Previews: PreviewProvider {
    static var previews: some View {
        Typealias_Learn()
    }
}
