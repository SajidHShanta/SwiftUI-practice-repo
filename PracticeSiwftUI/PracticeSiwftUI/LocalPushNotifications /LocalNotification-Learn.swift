//
//  LocalNotification-Learn.swift
//  PracticeSiwftUI
//
//  Created by Sajid Shanta on 4/3/23.
//

import SwiftUI
import UserNotifications
import CoreLocation

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
        
        // trigger can be 3 types: time, calendar, location
        
        // - time
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        
        // - calendar
//        var dateComponents = DateComponents()
//        dateComponents.hour = 0
//        dateComponents.minute = 18
//        dateComponents.weekday = 2         // every sunday 12 : 18 AM
////        dateComponents.weekOfMonth
////        dateComponents.weekOfYear
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // - location
        let coordinate = CLLocationCoordinate2D(
            latitude: 20.0,
            longitude: 30.0)
        let region = CLCircularRegion(
            center: coordinate,
            radius: 50,
            identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = false
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString, // random id. because in this scenario we don't need to track
            content: content,
            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

struct LocalNotification_Learn: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Button("Request Permission") {
                NotificationManager.instance.requestAuthorization()
            }
            
            Button("Schedule Notification") {
                NotificationManager.instance.scheduleNotification()
            }
            
            Button("Cancel All Notification") {
                NotificationManager.instance.cancelNotification()
            }
            .foregroundColor(.red)
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotification_Learn_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotification_Learn()
    }
}
