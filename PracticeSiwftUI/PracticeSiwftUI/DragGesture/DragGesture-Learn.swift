//
//  DragGesture-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 17/2/23.
//

import SwiftUI

struct DragGesture_Learn: View {
    @State private var offset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(offset)
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

struct DragGesture_Learn_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_Learn()
    }
}
