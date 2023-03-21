//
//  CodableViewModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 21/3/23.
//

import Foundation

class CodableViewModel: ObservableObject {
    @Published var customer: CustomerModel? = CustomerModel(id: "", name: "Sajid", point: 32, isPremium: false)
}
