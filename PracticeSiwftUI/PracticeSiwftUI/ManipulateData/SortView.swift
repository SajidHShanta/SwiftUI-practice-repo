//
//  SortView.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 7/3/23.
//

import SwiftUI

struct SortView: View {
    @StateObject var vm = ArrayModificationViewModel()
    
    var body: some View {
        VStack {
            ForEach(vm.userArray) { user in
                Text(user.name)
            }
        }
    }
}

struct SortView_Previews: PreviewProvider {
    static var previews: some View {
        SortView()
    }
}
