//
//  MenuDetailModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

struct MenuDetailModel: Identifiable {
    let id = UUID()
    let menuImage: Image
    let menuKoreanName: String
    let menuEnglishName: String
    let menuText: String
    let menuPrice: String
    let menuOption: MenuOptions
    enum MenuOptions: Int {
        case hotOnly = 0
        case iceOnly = 1
        case bothAvailable = 2
    }
}
