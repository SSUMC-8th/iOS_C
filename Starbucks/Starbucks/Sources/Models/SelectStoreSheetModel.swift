//
//  SelectShopSheetModel.swift
//  Starbucks
//
//  Created by 김나영 on 5/1/25.
//

import Foundation

enum SelectStoreSheetModel: String, CaseIterable, Identifiable {
    case nearStore = "가까운 매장"
    case frequentStore = "자주 가는 매장"

    var id: String { self.rawValue }
}
