//
//  MultipleSheets_Practice4_SolutionWithItem.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 22/2/23.
//

import SwiftUI

struct MultipleSheets_Practice4_SolutionWithItem: View {
    @State private var selectedModel: EmniEktaModel? = nil
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<100) { index in
                    Button("Button \(index)") {
                        selectedModel = EmniEktaModel(title: "Page \(index)")
                    }
                }
            }
        }
//        VStack {
//            Button("Button 1") {
//                selectedModel = EmniEktaModel(title: "One")
//            }
//            Button("Button 2") {
//                selectedModel = EmniEktaModel(title: "Two")
//            }
//        }
        .sheet(item: $selectedModel, content: { model in
            NextScreenWithItem(selectedModel: model)
        })
//        .sheet(isPresented: $showSheet) {
//            NextScreenWithItem(selectedModel: selectedModel)
//        }
    }
}

struct NextScreenWithItem: View {
    let selectedModel: EmniEktaModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.title)
    }
}

struct MultipleSheets_Practice4_SolutionWithItem_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets_Practice4_SolutionWithItem()
    }
}
