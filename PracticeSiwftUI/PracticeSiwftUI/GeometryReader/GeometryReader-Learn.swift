//
//  GeometryReader-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 20/2/23.
//

import SwiftUI

struct GeometryReader_Learn: View {
    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0.0) {
                Rectangle()
                    .fill(.red)
                    .frame(width: geo.size.width * 0.7)
                
                Rectangle()
                    .fill(.green)
            }
            .ignoresSafeArea()
        }
    }
}

struct GeometryReader_Learn_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Learn()
    }
}
