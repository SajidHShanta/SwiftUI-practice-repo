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
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else { return }
        
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
            
            print("Successfully downloaded data!")
            print(data)
            
            let jsonString = String(data: data, encoding: .utf8)
            print(jsonString ?? "no json data")
            
        }.resume()
    }
}

struct DownloadWithEscaping_Learn: View {
    @StateObject var vm = DownloadWithEscapingViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DownloadWithEscaping_Learn_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithEscaping_Learn()
    }
}
