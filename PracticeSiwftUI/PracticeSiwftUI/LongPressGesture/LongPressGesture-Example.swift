//
//  LongPressGesture-Example.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 9/2/23.
//

import SwiftUI

struct LongPressGesture_Example: View {
    @State private var isComplete: Bool = false
    @State private var isSuccess: Bool = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 50)
                .background(Color.gray)
                .padding()
        
        
            HStack {
                Text("Click Here")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 2) { isPressing in
                        // pressing start to minDuration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 2)) {
                                isComplete = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {
                                    withAnimation(.easeInOut) {
                                        isComplete = false
                                    }
                                }
                            }
                        }
                    } perform: {
                        // at the minDuration
                        withAnimation(.easeInOut) {
                            isSuccess = true
                        }
                    }
        
                Text("Reset")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isComplete = false
                        isSuccess = false
                    }
            }
        }
    }
}

struct LongPressGesture_Example_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture_Example()
    }
}
