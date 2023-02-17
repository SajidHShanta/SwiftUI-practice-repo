//
//  DragGesture_Example_2.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 17/2/23.
//

import SwiftUI

struct DragGesture_Example_2: View {
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY: CGFloat = 0
    @State var endOffsetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            SignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                if currentDragOffsetY < -150 {
                                    endOffsetY = -startingOffsetY
                                } else if endOffsetY != 0 && currentDragOffsetY > 150 {
                                    endOffsetY = 0
                                }
                                currentDragOffsetY = 0
                            }
                        }
                )
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct DragGesture_Example_2_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_Example_2()
    }
}

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text("App description goes here. It is multiline and center aligned description for this app. Actually It will be three line in mobile screen!")
                .multilineTextAlignment(.center)
            
            Text("Create an Account")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
    }
}
