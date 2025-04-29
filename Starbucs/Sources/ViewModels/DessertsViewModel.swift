//
//  DessertsViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/3/25.
//

import Foundation
import SwiftUI

class DessertsViewModel: ObservableObject {
    
    let dessertInstanceArr: [MenuModel] = [
        .init(image: .init(.nerty), menuName: "너티 크루아상"),
        .init(image: .init(.hotHam), menuName: "매콤 소시지 불고기"),
        .init(image: .init(.miniRip), menuName: "미니 리프 파이"),
        .init(image: .init(.bandO), menuName: "뺑 오 쇼콜라"),
        .init(image: .init(.hamandOil), menuName: "소시지&올리브 파이")
    ]
    
}
