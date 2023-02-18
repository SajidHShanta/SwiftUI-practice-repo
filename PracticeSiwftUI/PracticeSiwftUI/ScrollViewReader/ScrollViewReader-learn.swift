//
//  ScrollViewReader-learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 18/2/23.
//

import SwiftUI

struct ScrollViewReader_learn: View {
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy in
                Button {
//                    proxy.scrollTo(20, anchor: nil)
//                    proxy.scrollTo(20, anchor: .top)
//                    proxy.scrollTo(20, anchor: .bottom)
                    withAnimation(.spring()) {
                        proxy.scrollTo(20, anchor: .center)
                    }
                    
                } label: {
                    Text("Go to item 20")
                }
                
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
            }
        }
    }
}

struct ScrollViewReader_learn_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader_learn()
    }
}
