//
//  MaskModifier-Practice.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 23/2/23.
//

import SwiftUI

struct MaskModifier_Practice: View {
    @State var rating: Int =  3
    
    var body: some View {
        ZStack {
            starView
        }
    }
}

struct MaskModifier_Practice_Previews: PreviewProvider {
    static var previews: some View {
        MaskModifier_Practice()
    }
}

extension MaskModifier_Practice {
    private var starView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(index <= rating ? .yellow : .gray)
                    .onTapGesture {
                        rating = index
                    }
            }
        }

    }
}
