//
//  CodableViewModel.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 21/3/23.
//

import Foundation

class CodableViewModel: ObservableObject {
    @Published var customer: CustomerModel? = nil
    
    init() {
        getData()
    }
    
    func getData() {
        guard let data = getJSONData() else { return }
        
//        let jsonString = String(data: data, encoding: .utf8)
        
        if
            let localeData = try? JSONSerialization.jsonObject(with: data),
            let dictionary = localeData as? [String: Any],
            let id = dictionary["id"] as? String,
            let name = dictionary["name"] as? String,
            let point = dictionary["point"] as? Int,
            let isPremium = dictionary["isPremium"] as? Bool {
            
            let newCustomer = CustomerModel(id: id, name: name, point: point, isPremium: isPremium)
            customer = newCustomer
            
        }
    }
    
    func getJSONData() -> Data? {
        let disctionary: [String: Any] = [
            "id": "",
            "name": "Sajid",
            "point": 32,
            "isPremium": false
        ]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: disctionary)
        
        return jsonData
    }
}
