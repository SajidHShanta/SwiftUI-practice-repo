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
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is Notification Title"
        content.subtitle = "This is subtitle!"
        content.sound = .default
        content.badge = 1
        
        // trigger can be 3 types:
        // - time
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        // - calender
        // - location
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString, // random id. because in this scenario we don't need to track
            content: content,
            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}

struct LocalNotification_Learn: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                NotificationManager.instance.requestAuthorization()
            }
            
            Button("Schedule Notification") {
                NotificationManager.instance.scheduleNotification()
            }
        }
    }
}

struct LocalNotification_Learn_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotification_Learn()
    }
}
