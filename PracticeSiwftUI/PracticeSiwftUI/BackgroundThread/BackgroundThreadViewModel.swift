//
//  BackgroundThreadViewModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 16/3/23.
//

import Foundation

class BackgroundThreadViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    func fetchData() {
        DispatchQueue.global().async {
            let newData = self.downloadData()
            self.dataArray = newData
        }
    }
    
    private func downloadData() -> [String] {
        var data: [String] = []
        //fake data
        for i in 0..<100 {
            data.append("Item \(i)")
        }
        return data
    }
}
