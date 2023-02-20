//
//  GeometryReader-Example.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 20/2/23.
//

import SwiftUI

struct GeometryReader_Example: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader { geo in
                        Rectangle()
                            .fill(.blue)
                            .cornerRadius(20)
                            .rotation3DEffect(Angle(degrees: getPercentage(geo: geo) * 45), axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        }
    }
    
    private func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
}

struct GeometryReader_Example_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Example()
    }
}
