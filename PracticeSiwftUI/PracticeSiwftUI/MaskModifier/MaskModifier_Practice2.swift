//
//  MaskModifier_Practice2.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 23/2/23.
//

import SwiftUI

// 5star rating implementation with MASK modifier
struct MaskModifier_Practice2: View {
    @State var rating: Int =  3
    
    var body: some View {
        ZStack {
            starView
                .overlay {
                    GeometryReader { geo in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .foregroundColor(.yellow)
                                .frame(width: CGFloat(rating) * (geo.size.width / 5))
                        }
                    }
                    .allowsHitTesting(false)
                }
                .mask(starView)
        }
    }
}

struct MaskModifier_Practice2_Previews: PreviewProvider {
    static var previews: some View {
        MaskModifier_Practice2()
    }
}

extension MaskModifier_Practice2 {
    private var starView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(index <= rating ? .yellow : .gray)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                        }
                    }
            }
        }

    }
}
