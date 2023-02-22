//
//  MultipleSheets_Practice3_SolutionWithBinding.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 22/2/23.
//

import SwiftUI

struct MultipleSheets_Practice3_SolutionWithBinding: View {
    @State private var selectedModel: EmniEktaModel = EmniEktaModel(title: "Starting Title")
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Button("Button 1") {
                selectedModel = EmniEktaModel(title: "One")
                showSheet.toggle()
            }
            Button("Button 2") {
                selectedModel = EmniEktaModel(title: "Two")
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet) {
            NextScreenWithBinding(selectedModel: $selectedModel)
        }
    }
}

struct NextScreenWithBinding: View {
    @Binding var selectedModel: EmniEktaModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.title)
    }
}

struct MultipleSheets_Practice3_SolutionWithBinding_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets_Practice3_SolutionWithBinding()
    }
}
