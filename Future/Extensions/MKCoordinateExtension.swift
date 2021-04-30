//
//  MKCoordinateExtension.swift
//  Future
//
//  Created by Jonathan Green on 4/30/21.
//

import Foundation
import MapKit

extension MKCoordinateRegion {
    
    static var defaultRegion: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D.init(latitude: locations[0][0], longitude: locations[0][1]), latitudinalMeters: 100, longitudinalMeters: 100)
    }
    
}
