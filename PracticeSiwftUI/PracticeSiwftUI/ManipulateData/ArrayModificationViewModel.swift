//
//  ArrayModificationViewModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 7/3/23.
//

import Foundation

class ArrayModificationViewModel: ObservableObject {
    @Published var userArray: [UserModel] = []
    @Published var filteredUserArray: [UserModel] = []
    @Published var mappedArray: [String] = []

    init() {
        getUsers()
        getFilteredUsers()
    }
    
    func getUsers() {
        let user1 = UserModel(name: "Sajid", points: 2, isVerified: true)
        let user2 = UserModel(name: "Sami", points: 4, isVerified: false)
        let user3 = UserModel(name: "Rasheeq", points: 1, isVerified: false)
        let user4 = UserModel(name: "Emon", points: 20, isVerified: true)
        let user5 = UserModel(name: "Yasin", points: 9, isVerified: false)
        let user6 = UserModel(name: "Fiaz", points: 2, isVerified: true)
        let user7 = UserModel(name: "Sadi", points: 3, isVerified: true)
        let user8 = UserModel(name: "Mehedi", points: 14, isVerified: false)
        let user9 = UserModel(name: "Nirob", points: 18, isVerified: true)
        let user10 = UserModel(name: "Authoy", points: 21, isVerified: false)
        
        self.userArray.append(contentsOf: [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10])
    }
    
    func getFilteredUsers() {
        // sort
//        filteredUserArray = userArray.sorted(by: {$0.points > $1.points})
        
        // filter
//        filteredUserArray = userArray.filter({$0.isVerified})
        
        // map
//        mappedArray = userArray.map({ user -> String in
//            user.name
//        })
        mappedArray = userArray.map({$0.name})
    }
}
