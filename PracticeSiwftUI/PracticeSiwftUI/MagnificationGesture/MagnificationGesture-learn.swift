//
// MagnificationGesture-learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 15/2/23.
//

import SwiftUI

struct MagnificationGesture_learn: View {
    @State private var currentAmount: CGFloat = 0
    @State private var lastAmount: CGFloat = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .padding(40)
            .background(.red)
            .cornerRadius(10)
            .scaleEffect(1.0 + currentAmount + lastAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
                        lastAmount += currentAmount
                        currentAmount = 0
                    }
            )
    }
}

struct MagnificationGesture_learn_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture_learn()
    }
}
