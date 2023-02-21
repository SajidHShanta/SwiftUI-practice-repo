//
//  MultipleSheets_Practice1_Error_version.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 21/2/23.
//

import SwiftUI

struct EmniEktaModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheets_Practice1_Error_version: View {
    @State private var selectedModel: EmniEktaModel = EmniEktaModel(title: "Starting Title")
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Button("Button 1") {
                selectedModel = EmniEktaModel(title: "One")
                showSheet.toggle()
            }
            Button("Button 1") {
                selectedModel = EmniEktaModel(title: "Two")
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet) {
            NextScreen(selectedModel: selectedModel)
        }
    }
}

struct NextScreen: View {
    let selectedModel: EmniEktaModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.title)
    }
}

struct MultipleSheets_Practice1_Error_version_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets_Practice1_Error_version()
    }
}
