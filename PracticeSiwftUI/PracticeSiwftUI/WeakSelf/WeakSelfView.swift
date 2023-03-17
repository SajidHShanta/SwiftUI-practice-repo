//
//  WeakSelfView.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 17/3/23.
//

import SwiftUI

struct WeakSelfView: View {
    @AppStorage("count") var count: Int?
    
    init() {
        count = 0
    }
    
    var body: some View {
        NavigationView {
            NavigationLink("Go", destination: WeakSelfSecondScreen())
                .navigationTitle("1st View")
        }
        .overlay(alignment: .topTrailing, content: {
            Text("\(count ?? 0)")
                .padding()
                .background(.blue)
                .cornerRadius(10)
        })
        .padding()
    }
}

struct WeakSelfSecondScreen: View {
    @StateObject var vm = WeakSelfSecondScreenViewModel()
    
    var body: some View {
        VStack {
            Text("2nd View")
                .font(.largeTitle)
            .foregroundColor(.blue)
            
            if let data = vm.data {
                Text(data)
            }
        }
    }
}

struct WeakSelfView_Previews: PreviewProvider {
    static var previews: some View {
        WeakSelfView()
    }
}
