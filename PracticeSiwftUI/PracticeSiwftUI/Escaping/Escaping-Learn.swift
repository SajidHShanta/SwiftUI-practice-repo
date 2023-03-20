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
//        text = downloadData()
        
//        downloadData2 { returnedData in
//            text = returnedData
//        }
        
        // using strong references
//        downloadData3 { returnedData in
//            self.text = returnedData
//        }
        
        // using Weak references
//        downloadData3 { [weak self] returnedData in
//            self?.text = returnedData
//        }
        
        downloadData4 { [weak self] returnedResult in
            self?.text = returnedResult.data
        }
    }
    
    func downloadData() -> String {
        return "New Data"
    }
    
    //recreate problem / error
//    func downloadData2() -> String {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            return "New Data"
//        }
//    }
    
//    func downloadData2(completionHandler: (_ data: String) -> Void) {
//        // we can replace Void with '()'
//        //ex: (completionHandler: (_ data: String) -> ())
//
//        completionHandler("New Data")
//    }
    
    // solve with EscapingClosure
    func downloadData3(completionHandler: @escaping (_ data: String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completionHandler("New Data")
        }
    }
    
    // refactor / cleaner version of downloadData3
    func downloadData4(completionHandler: @escaping (DownloadResult) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let result = DownloadResult(data: "New Data")
            completionHandler(result)
        }
    }
}

//model
struct DownloadResult {
    let data: String
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
