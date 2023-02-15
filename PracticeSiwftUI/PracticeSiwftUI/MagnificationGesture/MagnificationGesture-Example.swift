//
//  MagnificationGesture-Example.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 15/2/23.
//

import SwiftUI

struct MagnificationGesture_Example: View {
    @State private var currentAmount: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 10.0) {
            HStack {
                Circle()
                    .frame(width: 35, height: 35)
                Text("Sajid Shanta")
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            //Image
            Rectangle()
                .frame(height: 300)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            currentAmount = value - 1
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                currentAmount = 0
                            }
                        }
                )
            
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .font(.headline)
            .padding(.horizontal)
            
            Text("Photo Caption is here. This is photo caption.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
    }
}

struct MagnificationGesture_Example_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture_Example()
    }
}
