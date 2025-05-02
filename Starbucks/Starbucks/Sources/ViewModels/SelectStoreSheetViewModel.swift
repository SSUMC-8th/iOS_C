//
//  SelectShopSheetViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 5/1/25.
//

import Foundation

class SelectStoreSheetViewModel: ObservableObject {
    @Published var selectedMenu: SelectStoreSheetModel = .nearStore
}
