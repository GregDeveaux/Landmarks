//
//  Landmark.swift
//  Landmarks
//
//  Created by Greg-Mini on 07/01/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Decodable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    var category: Category


    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Decodable {
        var latitude: Double
        var longitude: Double
    }
}
