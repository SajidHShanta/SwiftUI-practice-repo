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
        DispatchQueue.global(qos: .background).async {
            // qos options: background, default, unspecified, userInitiated, utility
            let newData = self.downloadData()
            
            print("Check1: is Main Thread: \(Thread.isMainThread)")
            print("Check1: current thred: \(Thread.current)")
            
            DispatchQueue.main.async {
                self.dataArray = newData
                
                print("Check2: is Main Thread: \(Thread.isMainThread)")
                print("Check2: current thred: \(Thread.current)")
            }
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
