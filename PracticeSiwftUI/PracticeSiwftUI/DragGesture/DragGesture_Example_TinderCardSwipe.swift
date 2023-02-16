//
//  DragGesture_Example_TinderCardSwipe.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 17/2/23.
//

import SwiftUI

struct DragGesture_Example_TinderCardSwipe: View {
    @State private var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                offset = value.translation
                            }
                        }
                        .onEnded { value in
                            offset = .zero
                        }
            )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return 1 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = Double(currentAmount / max)
        let maxAngle = 10.0
        return percentage * maxAngle
    }
}

struct DragGesture_Example_TinderCardSwipe_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_Example_TinderCardSwipe()
    }
}
