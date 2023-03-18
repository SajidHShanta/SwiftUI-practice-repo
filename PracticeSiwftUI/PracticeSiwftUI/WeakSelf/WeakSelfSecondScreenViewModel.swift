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
        
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount + 1, forKey: "count")
        
        getData()
    }
    
    deinit {
        print("deinitialize")
        
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount - 1, forKey: "count")
    }
    
    func getData() {
        //strong reference with 'self'
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) {
            self.data = "new data"
        }
    }
}
