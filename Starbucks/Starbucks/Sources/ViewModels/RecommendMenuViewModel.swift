//
//  CircleImageViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

@Observable
class RecommendMenuViewModel {
    let circleModel: [RecommendMenuModel] = [
        RecommendMenuModel(circleImage: Image("rcmMenu1"), circleName: "에스프레소 콘파나"),
        RecommendMenuModel(circleImage: Image("rcmMenu2"), circleName: "에스프레소 마키아또"),
        RecommendMenuModel(circleImage: Image("rcmMenu3"), circleName: "아이스 카페 아메리카노"),
        RecommendMenuModel(circleImage: Image("rcmMenu4"), circleName: "카페 아메리카노"),
        RecommendMenuModel(circleImage: Image("rcmMenu5"), circleName: "아이스 카라멜 마키아또"),
        RecommendMenuModel(circleImage: Image("rcmMenu6"), circleName: "카라멜 마키아또")
    ]
}
