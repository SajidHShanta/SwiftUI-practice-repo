//
//  DownloadWithCombine-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 24/3/23.
//

import SwiftUI

// https://app.quicktype.io/
struct PostModel2: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class DownloadWithCombineViewModel: ObservableObject {
    @Published var posts: [PostModel2] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        
    }
}


struct DownloadWithCombine_Learn: View {
    @StateObject var vm = DownloadWithCombineViewModel()
    
    var body: some View {
        List(vm.posts) { post in
            VStack(alignment: .leading, spacing: 20.0) {
                Text(post.title)
                    .font(.headline)
                Text(post.body)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct DownloadWithCombine_Learn_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithCombine_Learn()
    }
}
