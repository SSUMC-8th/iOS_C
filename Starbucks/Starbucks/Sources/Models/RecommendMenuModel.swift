//
//  CircleImageModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

struct RecommendMenuModel: Identifiable {
    let id = UUID()
    let circleImage: Image
    let circleName: String
}
