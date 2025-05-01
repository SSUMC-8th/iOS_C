//
//  DetailMenuModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/30/25.
//

import Foundation
import SwiftUI

struct DetailMenuModel {
    
    let id = UUID()
    
    let image: Image
    let menuName: String
    let menuEng: String
    let price: Int
    let decription: String
    let isHot: Bool
}
