//
//  ManipulateDataView.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 7/3/23.
//

import SwiftUI

struct ManipulateDataView: View {
    @StateObject var vm = ArrayModificationViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(vm.filteredUserArray) { user in
                    VStack(alignment: .leading) {
//                        Text(user.name)
//                            .font(.headline)
                        HStack {
                            Text("Points: \(user.points)")
                            Spacer()
                            Image(systemName: user.isVerified ? "flame.fill" : "flame")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
            }
        }
    }}

struct ManipulateDataView_Previews: PreviewProvider {
    static var previews: some View {
        ManipulateDataView()
    }
}
