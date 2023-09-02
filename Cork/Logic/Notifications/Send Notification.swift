//
//  Send Notification.swift
//  Cork
//
//  Created by David Bureš on 13.08.2023.
//

import Foundation
import SwiftUI
import UserNotifications

func sendNotification(title: String, body: String? = nil, subtitle: String? = nil) -> Void
{
    // Get whether we can send notifications
    let notificationsAreEnabled = UserDefaults.standard.bool(forKey: "areNotificationsEnabled")

    if notificationsAreEnabled
    {
        let notification = UNMutableNotificationContent()

        notification.title = title

        if let body
        {
            notification.body = body
        }

        if let subtitle
        {
            notification.subtitle = subtitle
        }

        notification.sound = .default
        notification.interruptionLevel = .timeSensitive

        let request = UNNotificationRequest(identifier: UUID().uuidString, content: notification, trigger: nil)

        AppConstants.notificationCenter.add(request)
    }
    else
    {
        print("Will not send notification because they're disabled")
    }
}
