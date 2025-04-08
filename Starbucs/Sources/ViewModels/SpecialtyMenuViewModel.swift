//
//  SpecialtyMenuViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/3/25.
//

import Foundation
import SwiftUI

class SpecialtyMenuViewModel: ObservableObject{
    
    let specialtyMenuModel: [SpecialtyMenuModel] = [
        .init(image: .init(.bluebanner), menuName: "촉촉한 빵 1"),
        .init(image: .init(.bluebanner), menuName: "촉촉한 빵 2"),
        .init(image: .init(.bluebanner), menuName: "촉촉한 빵 3"),
        .init(image: .init(.bluebanner), menuName: "촉촉한 빵 4"),
        .init(image: .init(.bluebanner), menuName: "촉촉한 빵 5")
    ]
}
