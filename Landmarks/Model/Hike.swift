//
//  Hike.swift
//  Landmarks
//
//  Created by Greg-Mini on 08/01/2023.
//

import Foundation

struct Hike: Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let distance: Double
    let difficulty: Int
    let observations: [Observation]

    struct Observation: Decodable, Hashable {
        let distanceFromStart: Double

        let elevation: Range<Double>
        let pace: Range<Double>
        let heartRate: Range<Double>
    }

    static var distanceFormatter = LengthFormatter()

    var distanceText: String {
        Hike.distanceFormatter
            .string(fromValue: distance, unit: .kilometer)
    }
}



