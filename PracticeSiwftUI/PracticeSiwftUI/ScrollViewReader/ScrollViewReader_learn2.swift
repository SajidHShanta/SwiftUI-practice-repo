//
//  ScrollViewReader_learn2.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 18/2/23.
//

import SwiftUI

struct ScrollViewReader_learn2: View {
    @State private var textFieldText: String = ""
    @State private var scrollToIndex: Int = 0
    
    var body: some View {
        
        VStack {
            TextField("Enter item number here..", text: $textFieldText)
                .frame(height: 50)
                .border(.black)
                .padding()
                .keyboardType(.numberPad)
            
            Button {
                if let index = Int(textFieldText) {
                    scrollToIndex = index
                }
            } label: {
                Text("Scroll Now")
            }
            
            ScrollView {
                ScrollViewReader { proxy in
                    ForEach(0..<50) { index in
                        Text("Item number: \(index)")
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex) { newValue in
                        withAnimation(.spring()) {
                            proxy.scrollTo(scrollToIndex, anchor: .top)
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewReader_learn2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader_learn2()
    }
}
