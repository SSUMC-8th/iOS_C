//
//  DessertsViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/3/25.
//

import Foundation
import SwiftUI

class DessertsViewModel: ObservableObject {
    
    let dessertModel: [DessertsModel] = [
        .init(image: .init(.starbucsLogo), menuName: "콘파냐 1"),
        .init(image: .init(.starbucsLogo), menuName: "콘파냐 2"),
        .init(image: .init(.starbucsLogo), menuName: "에콘파냐 3"),
        .init(image: .init(.starbucsLogo), menuName: "에콘파냐 4"),
        .init(image: .init(.starbucsLogo), menuName: "에스콘파냐"),
        .init(image: .init(.starbucsLogo), menuName: "에콘파냐")
    ]
    
}
