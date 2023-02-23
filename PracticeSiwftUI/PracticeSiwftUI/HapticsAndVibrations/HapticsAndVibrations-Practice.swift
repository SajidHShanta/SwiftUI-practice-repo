//
//  HapticsAndVibrations-Practice.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 24/2/23.
//

import SwiftUI

class HapticManeger {
    static let instance = HapticManeger() // singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticsAndVibrations_Practice: View {
    let hapticManeger = HapticManeger.instance
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Haptics and Vibrations")
                .font(.title)
            
            VStack {
                Text("Notification:")
                Button("error") {
                    hapticManeger.notification(type: .error)
                }
                Button("success") {
                    hapticManeger.notification(type: .success)
                }
                Button("warning") {
                    hapticManeger.notification(type: .warning)
                }
            }
            
            Divider()
            
            VStack {
                Text("Impact:")
                Button("light") {
                    hapticManeger.impact(style: .light)
                }
                Button("heavy") {
                    hapticManeger.impact(style: .heavy)
                }
                Button("medium") {
                    hapticManeger.impact(style: .medium)
                }
                Button("rigid") {
                    hapticManeger.impact(style: .rigid)
                }
                Button("soft") {
                    hapticManeger.impact(style: .soft)
                }
            }
        }
    }
}

struct HapticsAndVibrations_Practice_Previews: PreviewProvider {
    static var previews: some View {
        HapticsAndVibrations_Practice()
    }
}
