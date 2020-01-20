//
//  Landmark.swift
//  SwiftUIStudy
//
//  Created by apple on 2020/1/20.
//  Copyright © 2020 yinhe. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        
    }
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}
