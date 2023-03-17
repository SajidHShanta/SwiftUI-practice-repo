//
//  WeakSelfSecondScreenViewModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 17/3/23.
//

import Foundation

class WeakSelfSecondScreenViewModel: ObservableObject {
    @Published var data: String? = nil
    
    init() {
        print("initialize")
        getData()
    }
    
    deinit {
        print("deinitialize")
    }
    
    func getData() {
        data = "new data"
    }
}
