//
//  Profile.swift
//  Landmarks
//
//  Created by Greg-Mini on 26/01/2023.
//

import Foundation

struct Profile {

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌸"
        case summer = "🌞"
        case autumn = "🍁"
        case winter = "⛄️"

        var id: String { rawValue }
    }

    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "greg")


}
