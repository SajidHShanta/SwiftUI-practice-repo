//
//  WeakSelfView.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 17/3/23.
//

import SwiftUI

struct WeakSelfView: View {
    var body: some View {
        NavigationView {
            NavigationLink("Go", destination: WeakSelfSecondScreen())
                .navigationTitle("1st View")
        }
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
