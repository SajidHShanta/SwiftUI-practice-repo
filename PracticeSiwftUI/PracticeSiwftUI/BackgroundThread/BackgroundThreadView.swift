//
//  BackgroundThreadView.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 16/3/23.
//

import SwiftUI

struct BackgroundThreadView: View {
    @StateObject var vm = BackgroundThreadViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Text("LOAD DATA")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()
                    }
                
                ForEach(vm.dataArray, id: \.self) { data in
                    Text(data)
                        .font(.headline)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct BackgroundThreadView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundThreadView()
    }
}
