//
//  MultipleSheets_Practice2_SolutionUsingMultipleSheets.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 22/2/23.
//

import SwiftUI

struct MultipleSheets_Practice2_SolutionUsingMultipleSheets: View {
//    @State private var selectedModel: EmniEktaModel = EmniEktaModel(title: "Starting Title")
    @State private var showSheet1: Bool = false
    @State private var showSheet2: Bool = false
    
    var body: some View {
        VStack {
            Button("Button 1") {
                showSheet1.toggle()
            }
            .sheet(isPresented: $showSheet1) {
                NextScreenWithMultipleSheets(selectedModel: EmniEktaModel(title: "One"))
            }
            Button("Button 2") {
                showSheet2.toggle()
            }
            .sheet(isPresented: $showSheet2) {
                NextScreenWithMultipleSheets(selectedModel: EmniEktaModel(title: "Two"))
            }
        }
//        .sheet(isPresented: $showSheet) {
//            NextScreenWithMultipleSheets(selectedModel: selectedModel)
//        }
    }
}

struct NextScreenWithMultipleSheets: View {
    let selectedModel: EmniEktaModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.title)
    }
}

struct MultipleSheets_Practice2_SolutionUsingMultipleSheets_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets_Practice2_SolutionUsingMultipleSheets()
    }
}
