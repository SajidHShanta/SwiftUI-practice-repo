//
//  MappedArrayView.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 7/3/23.
//

import SwiftUI

struct MappedArrayView: View {
    @StateObject var vm = ArrayModificationViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(vm.mappedArray, id: \.self) { userName in
                Text("User's Name: \(userName)")
            }
        }
    }
}

struct MappedArrayView_Previews: PreviewProvider {
    static var previews: some View {
        MappedArrayView()
    }
}
