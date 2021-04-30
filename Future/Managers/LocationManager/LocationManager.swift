//
//  LocationManager.swift
//  Future
//
//  Created by Jonathan Green on 4/30/21.
//

import Foundation
import MapKit

class LocationManager: NSObject, ObservableObject  {
    var region = MKCoordinateRegion()
    private let manager = CLLocationManager()
    @Published var location: CLLocation?
    override init() {
        super.init()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        manager.delegate = self
        updateLocation()
    }
        
    func updateLocation() {
        self.location = CLLocation(latitude: locations[0][0], longitude: locations[0][1])
    }
}


extension LocationManager: CLLocationManagerDelegate {
    
}
