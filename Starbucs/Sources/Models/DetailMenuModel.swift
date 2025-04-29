//
//  DetailMenuModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/30/25.
//

import Foundation
import SwiftUI

struct DetailMenuModel: Hashable {
    
    let id = UUID()
    
    let menuName: String
    let price: Int
    let image: Image
    let information: String
    let isHot: Bool
    
    
    // Image는 Hashable을 기본적으로 준수하지 않으므로 사용자 정의 해시 함수 필요
    func hash(into hasher: inout Hasher) {
        hasher.combine(menuName)
        hasher.combine(price)
        hasher.combine(information)
        hasher.combine(isHot)
        // image는 해시 계산에서 제외
    }
    
//    static func == (lhs: MenuModel, rhs: MenuModel) -> Bool {
//        return lhs.menuName == rhs.menuName &&
//               lhs.price == rhs.price &&
//               lhs.information == rhs.information &&
//               lhs.isHot == rhs.isHot
//        // image는 비교에서 제외
//    }
}
