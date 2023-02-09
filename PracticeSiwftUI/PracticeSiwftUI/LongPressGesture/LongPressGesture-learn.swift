//
//  LongPressGesture-learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 9/2/23.
//

import SwiftUI

struct LongPressGesture_learn: View {
    @State private var isComplete: Bool = false

    var body: some View {
        VStack {
            Spacer()
        
            // reguller on tap gesture
            Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
                .padding()
                .padding(.horizontal)
                .background(isComplete ? .green : .gray)
                .cornerRadius(10)
                .onTapGesture {
                    isComplete.toggle()
                }
        
            Spacer()
        
            // default long press gesture
            Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
                .padding()
                .padding(.horizontal)
                .background(isComplete ? .green : .gray)
                .cornerRadius(10)
                .onLongPressGesture {
                    isComplete.toggle()
                }
        
            Spacer()
        
            // long press gesture with minimum Duration
            Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
                .padding()
                .padding(.horizontal)
                .background(isComplete ? .green : .gray)
                .cornerRadius(10)
                .onLongPressGesture(minimumDuration: 1.0) {
                    isComplete.toggle()
                }
        
            Spacer()
        
            // long press gesture with maximum Distance
            Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
                .padding()
                .padding(.horizontal)
                .background(isComplete ? .green : .gray)
                .cornerRadius(10)
                .onLongPressGesture(maximumDistance: 300.0) {
                    /* this is used more for if users are
                    like clicking on something that's maybe hard to click and you want to give them some extra room */
                    isComplete.toggle()
                }
            Spacer()
        }
    }
}

struct LongPressGesture_learn_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture_learn()
    }
}
