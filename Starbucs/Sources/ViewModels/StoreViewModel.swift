//
//  StoreViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 5/1/25.
//


import Foundation
import SwiftUI

class StoreViewModel: ObservableObject {
    @Published var storeList: [StoreModel] = []
    
    init() {
        loadJSON()
    }
    
    func loadJSON() {
        guard let url = Bundle.main.url(forResource: "storeList2025", withExtension: "geojson"),
              let data = try? Data(contentsOf: url) else {
            print("파일 없는딩")
            return
        }

        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let features = json["features"] as? [[String: Any]] {

                var tempList: [StoreModel] = []
                
                for feature in features {
                    if let props = feature["properties"] as? [String: Any],
                       let name = props["Sotre_nm"] as? String,
                       let address = props["Address"] as? String {
                        
                        let model = StoreModel(name: name, locate: address)
                        tempList.append(model)
                    }
                }
                
                DispatchQueue.main.async {
                    self.storeList = tempList
                }
            }
        } catch {
            print("파싱 오류: \(error)")
        }
    }
}
