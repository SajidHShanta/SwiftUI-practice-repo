//
//  LocalNotification-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 4/3/23.
//

import SwiftUI
import UserNotifications

class NotificationManager {
    static let instance = NotificationManager() //singleton
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
            if let error = error {
                print("ERROR: \(error)")
            } else {
                print("Success")
            }
        }
    }
}

struct LocalNotification_Learn: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                NotificationManager.instance.requestAuthorization()
            }
        }
    }
}

struct LocalNotification_Learn_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotification_Learn()
    }
}
