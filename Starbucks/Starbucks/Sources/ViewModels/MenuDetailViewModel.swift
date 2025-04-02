//
//  MenuDetailViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

@Observable
class MenuDetailViewModel {
    let menuDetails: [MenuDetailModel] = [
        MenuDetailModel(menuImage: Image("rcmMenuDetail1"),
                        menuKoreanName: "에스프레소 콘파나",
                        menuEnglishName: "Espresso Con Panna",
                        menuText: "진한 에스프레소 위에 부드러운 휘핑크림을 얹은 메뉴",
                        menuPrice: "₩4,500",
                        menuOption: .hotOnly),

        MenuDetailModel(menuImage: Image("rcmMenuDetail2"),
                        menuKoreanName: "에스프레소 마키아또",
                        menuEnglishName: "Espresso Macchiato",
                        menuText: "풍부한 에스프레소에 거품 우유를 살짝 더한 메뉴",
                        menuPrice: "₩4,500",
                        menuOption: .hotOnly),

        MenuDetailModel(menuImage: Image("rcmMenuDetail3"),
                        menuKoreanName: "아이스 카페 아메리카노",
                        menuEnglishName: "Iced Caffè Americano",
                        menuText: "깊고 진한 에스프레소를 시원하게 즐길 수 있는 메뉴",
                        menuPrice: "₩4,100",
                        menuOption: .iceOnly),

        MenuDetailModel(menuImage: Image("rcmMenuDetail4"),
                        menuKoreanName: "카페 아메리카노",
                        menuEnglishName: "Caffè Americano",
                        menuText: "진한 에스프레소를 물과 함께 부드럽게 즐길 수 있는 메뉴",
                        menuPrice: "₩4,100",
                        menuOption: .bothAvailable),

        MenuDetailModel(menuImage: Image("rcmMenuDetail5"),
                        menuKoreanName: "아이스 카라멜 마키아또",
                        menuEnglishName: "Iced Caramel Macchiato",
                        menuText: "달콤한 카라멜과 부드러운 우유가 어우러진 음료",
                        menuPrice: "₩5,500",
                        menuOption: .iceOnly),

        MenuDetailModel(menuImage: Image("rcmMenuDetail6"),
                        menuKoreanName: "카라멜 마키아또",
                        menuEnglishName: "Caramel Macchiato",
                        menuText: "달콤한 카라멜과 따뜻한 우유가 조화로운 음료",
                        menuPrice: "₩5,500",
                        menuOption: .bothAvailable)
    ]
    
    func getMenuDetail(for circleName: String) -> MenuDetailModel? {
        return menuDetails.first { $0.menuKoreanName == circleName }
    }
}
