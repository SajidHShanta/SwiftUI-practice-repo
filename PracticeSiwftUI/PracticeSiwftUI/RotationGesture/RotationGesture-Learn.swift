//
//  RotationGesture-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 16/2/23.
//

import SwiftUI

struct RotationGesture_Learn: View {
    @State private var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(50)
            .background(.blue)
            .cornerRadius(10)
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        angle = value
                    }
                    .onEnded { value in
                        angle = Angle(degrees: 0)
                    }
            )
    }
}

struct RotationGesture_Learn_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture_Learn()
    }
}
