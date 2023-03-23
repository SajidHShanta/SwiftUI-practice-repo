//
//  DownloadWithEscaping-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 23/3/23.
//

import SwiftUI

class DownloadWithEscapingViewModel: ObservableObject {
    init() {
        
    }
    
    func getData() {
        
    }
}

struct DownloadWithEscaping_Learn: View {
    @StateObject var vm = DownloadWithEscapingViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DownloadWithEscaping_Learn_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithEscaping_Learn()
    }
}
