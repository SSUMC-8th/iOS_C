//
//  DailyDessertViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

@Observable
class DailyDessertViewModel {
    let dailyDessertModel: [DailyDessertModel] = [
        DailyDessertModel(circleImage: Image("dailyDessert1"), circleName: "너티 크루아상"),
        DailyDessertModel(circleImage: Image("dailyDessert2"), circleName: "매콤 소시지 불고기"),
        DailyDessertModel(circleImage: Image("dailyDessert3"), circleName: "미니 리프 파이"),
        DailyDessertModel(circleImage: Image("dailyDessert4"), circleName: "뺑 오 쇼콜라"),
        DailyDessertModel(circleImage: Image("dailyDessert5"), circleName: "소시지&올리브 파이"),
    ]
}
