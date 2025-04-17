//
//  ProductsViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/13/25.
//

import Foundation
import SwiftUI

class ProductsViewModel: ObservableObject {
    
    let ProductsArr: [ProductsModel] = [
        .init(image: .init(.starbucsLogo), productName: "텀블러"),
        .init(image: .init(.starbucsLogo), productName: "커피 용품"),
        .init(image: .init(.starbucsLogo), productName: "선물세트"),
        .init(image: .init(.starbucsLogo), productName: "보온병"),
        .init(image: .init(.starbucsLogo), productName: "머그/컵"),
        .init(image: .init(.starbucsLogo), productName: "라이프스타일")
    ]
    
}
