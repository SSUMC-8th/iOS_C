//
//  SpecialtyMenuViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/3/25.
//

import Foundation
import SwiftUI

class RecommandViewModel: ObservableObject{
    
    let recommandInstanceArr: [MenuModel] = [
        .init(image: .init(.confana), menuName: "에스프레소 콘파냐"),
        .init(image: .init(.macchiato), menuName: "에스프레소 마키야또"),
        .init(image: .init(.americanoHot), menuName: "아이스 카페 아메리카노"),
        .init(image: .init(.americanpCold), menuName: "카페 아메리카노"),
        .init(image: .init(.caramelHot), menuName: "카라멜 마키야또"),
        .init(image: .init(.caramerlCold), menuName: "아이스 카라멜 마키야또")
    ]
}
