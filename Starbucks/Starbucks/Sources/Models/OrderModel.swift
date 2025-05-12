//
//  OrderModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/30/25.
//

import Foundation

enum OrderModel: String, CaseIterable, Identifiable {
    case entireMenu = "전체 메뉴"
    case myOwnMenu = "나만의 메뉴"
    case cakeReserve = "홀케이크 예약"

    var id: String { self.rawValue }
}

enum SubEntireMenuModel: String, CaseIterable, Identifiable {
    case drink = "음료"
    case food = "푸드"
    case goods = "상품"

    var id: String { self.rawValue }
}
