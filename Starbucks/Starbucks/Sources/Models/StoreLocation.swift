//
//  StoreLocation.swift
//  Starbucks
//
//  Created by 김나영 on 5/1/25.
//

import Foundation
import CoreLocation

struct StoreFeature: Codable, Identifiable {
    var id: String { properties.Seq }

    let properties: StoreProperties
    let geometry: StoreGeometry
}

struct StoreProperties: Codable {
    let Seq: String
    let Sotre_nm: String
    let Address: String
    let Telephone: String
    let Category: String
    let Ycoordinate: Double
    let Xcoordinate: Double
}

struct StoreGeometry: Codable {
    let type: String
    let coordinates: [Double]
}

struct StoreFeatureCollection: Codable {
    let type: String
    let features: [StoreFeature]
}

