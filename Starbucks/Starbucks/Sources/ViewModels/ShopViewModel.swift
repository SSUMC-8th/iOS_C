//
//  ShopViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/8/25.
//

import Foundation

@Observable
class ShopViewModel {
    let bannerImages = ["shopBanner1", "shopBanner2", "shopBanner3"]
    
    let allProductsData: [(imageName: String, title: String)] = [
        ("shopProducts1", "텀블러"),
        ("shopProducts2", "커피용품"),
        ("shopProducts3", "선물세트"),
        ("shopProducts4", "보온병"),
        ("shopProducts5", "머그/컵"),
        ("shopProducts6", "라이프스타일")
    ]
    
    let itemsData: [(imageName: String, title: String)] = [
        ("shopItem1", "그린 사이렌 슬리브 머그 355ml"),
        ("shopItem2", "그린 사이렌 클래식 머그 355ml"),
        ("shopItem3", "사이렌 머그 앤 우드 소서"),
        ("shopItem4", "리저브 골드 테일 머그 355ml"),
        ("shopItem5", "블랙 앤 골드 머그 473ml"),
        ("shopItem6", "블랙 링 머그 355ml"),
        ("shopItem7", "북청사자놀음 데미머그 89ml"),
        ("shopItem8", "서울 제주 데미머그 세트")
    ]
    
    let newProductsData: [(imageName: String, title: String)] = [
        ("shopNewProduct1", "그린 사이렌 도트 머그 237ml"),
        ("shopNewProduct2", "그린 사이렌 도트 머그 355ml"),
        ("shopNewProduct3", "홈 카페 미니 머그 세트"),
        ("shopNewProduct4", "홈 카페 글라스 세트")
    ]
}
