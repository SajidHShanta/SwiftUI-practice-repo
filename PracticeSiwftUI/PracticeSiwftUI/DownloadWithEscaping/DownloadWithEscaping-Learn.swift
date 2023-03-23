//
//  DownloadWithEscaping-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 23/3/23.
//

import SwiftUI

// https://app.quicktype.io/
struct PostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class DownloadWithEscapingViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else { return }
        
        // dataTast() goes to BACKGROUND thread by default
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {
                print("No data")
                return
            }
            
            guard error == nil else {
                print("Error: \(String(describing: error))")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("Invalid response")
                return
            }
            
            guard response.statusCode >= 200 && response.statusCode < 300 else {
                print("Status code sholud be 2xx, but here \(response.statusCode)")
                return
            }
            
//            print("Successfully downloaded data!")
//            print(data)
//
//            let jsonString = String(data: data, encoding: .utf8)
//            print(jsonString ?? "no json data")
            
            // decode downloaded JSON data to PostModel
            guard let newPost = try? JSONDecoder().decode(PostModel.self, from: data) else {
                return
            }
            // back to main thread
            DispatchQueue.main.async { [weak self] in
                self?.posts.append(newPost)
            }
            
        }.resume()
    }
}

struct DownloadWithEscaping_Learn: View {
    @StateObject var vm = DownloadWithEscapingViewModel()
    
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

struct DownloadWithEscaping_Learn_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithEscaping_Learn()
    }
}
