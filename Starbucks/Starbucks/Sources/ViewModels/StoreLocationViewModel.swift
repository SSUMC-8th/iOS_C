//
//  StoreLocationViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 5/1/25.
//

import Foundation
import CoreLocation

class StoreLocationViewModel: ObservableObject {
    @Published var stores: [StoreFeature] = []
    
    var currentLocation: CLLocation? {
        didSet {
            sortStoresByDistance()
        }
    }

    func loadGeoJSON() {
        guard let url = Bundle.main.url(forResource: "스타벅스_2025 데이터", withExtension: "geojson") else {
            print("GeoJSON 파일을 찾을 수 없습니다")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode(StoreFeatureCollection.self, from: data)
            DispatchQueue.main.async {
                self.stores = decoded.features
            }
        } catch {
            print("파싱 실패: \(error.localizedDescription)")
        }
        
//        guard let location = currentLocation
//        else {
//            print("!!!!!!!!!!!!!실패")
//            return
//        }
//        print(location)
    }
    
    private func sortStoresByDistance() {
        guard let currentLocation else { return }

        self.stores.sort {
            print(currentLocation)
            let loc1 = CLLocation(latitude: $0.properties.Ycoordinate, longitude: $0.properties.Xcoordinate)
            let loc2 = CLLocation(latitude: $1.properties.Ycoordinate, longitude: $1.properties.Xcoordinate)
            return loc1.distance(from: currentLocation) < loc2.distance(from: currentLocation)
        }
    }
}
