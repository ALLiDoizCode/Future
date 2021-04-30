//
//  MapView.swift
//  Future
//
//  Created by Jonathan Green on 4/30/21.
//

import SwiftUI
import MapKit
import Combine

struct MapView: View {
    @ObservedObject private var manager = LocationManager()
    @State private var region = MKCoordinateRegion.defaultRegion
    var places:[Place] = []
    
    init() {
        for location in locations {
            let place = Place(heart: location[2], latitude: location[0], longitude: location[1])
            places.append(place)
        }
        places = places.dropPercentage(percentageToKeep: 10)
    }
    
    var body: some View {
        VStack {
            if manager.location != nil {
                Map(coordinateRegion: $region, interactionModes: [.all], annotationItems:places) { place in
                    MapAnnotation(coordinate: place.coordinate) {
                        VStack {
                            ZStack {
                              Circle()
                                .stroke(Color.blue, lineWidth: 4).frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                              
                              Text("\(Int(place.heart))")
                            }
                        }
                    }
                }
                    
            }else {
                Text("Searching for location")
            }
        }
           
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


