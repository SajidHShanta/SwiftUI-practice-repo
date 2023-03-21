//
//  Codable-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 21/3/23.
//

import SwiftUI

struct Codable_Learn: View {
    @StateObject var vm = CodableViewModel()
    
    var body: some View {
        VStack {
            if let customer = vm.customer {
                Text(customer.name)
            }
        }
    }
}

struct Codable_Learn_Previews: PreviewProvider {
    static var previews: some View {
        Codable_Learn()
    }
}
