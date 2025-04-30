//
//  OrderViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/30/25.
//

import Foundation
import SwiftUI

class OrderViewModel: ObservableObject {
    @Published var selectedMenu: OrderModel = .entireMenu
}

