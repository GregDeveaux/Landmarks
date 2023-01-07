//
//  MapView.swift
//  Landmarks
//
//  Created by Greg-Mini on 07/01/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinates: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates)
            }
    }

    private func setRegion(_ coordinates: CLLocationCoordinate2D) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        region = MKCoordinateRegion(center: coordinates, span: span)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
