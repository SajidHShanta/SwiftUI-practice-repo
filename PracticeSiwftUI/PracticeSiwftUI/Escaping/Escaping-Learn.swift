//
//  Escaping-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 20/3/23.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    @Published var text: String = "Hello"
    
    func getData() {
        text = downloadData2()
    }
    
    func downloadData() -> String {
        return "New Data"
    }
    
    //recreate problem / error
    func downloadData2() -> String {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            return "New Data"
        }
    }
}

struct Escaping_Learn: View {
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .foregroundColor(.red)
            .onTapGesture {
                vm.getData()
            }
    }
}

struct Escaping_Learn_Previews: PreviewProvider {
    static var previews: some View {
        Escaping_Learn()
    }
}
