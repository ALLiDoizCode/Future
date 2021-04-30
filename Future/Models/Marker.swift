//
//  Marker.swift
//  Future
//
//  Created by Jonathan Green on 4/30/21.
//

import MapKit

struct Place: Identifiable {
    let id = UUID()
    let heart: Double
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
