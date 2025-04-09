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
                        menuText: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
                        menuPrice: "4,100원",
                        menuOption: .hotOnly),

        MenuDetailModel(menuImage: Image("rcmMenuDetail2"),
                        menuKoreanName: "에스프레소 마키아또",
                        menuEnglishName: "Espresso Macchiato",
                        menuText: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로서, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
                        menuPrice: "3,900원",
                        menuOption: .iceOnly),

        MenuDetailModel(menuImage: Image("rcmMenuDetail3"),
                        menuKoreanName: "아이스 카페 아메리카노",
                        menuEnglishName: "Iced Caffè Americano",
                        menuText: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피",
                        menuPrice: "4,700원",
                        menuOption: .bothAvailable),

        MenuDetailModel(menuImage: Image("rcmMenuDetail4"),
                        menuKoreanName: "카페 아메리카노",
                        menuEnglishName: "Caffe Americano",
                        menuText: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
                        menuPrice: "4,700원",
                        menuOption: .bothAvailable),

        MenuDetailModel(menuImage: Image("rcmMenuDetail5"),
                        menuKoreanName: "아이스 카라멜 마키아또",
                        menuEnglishName: "Iced Caramel Macchiato",
                        menuText: "향긋한 바닐라 시럽과 시원한 우유에 어름을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
                        menuPrice: "6,100원",
                        menuOption: .bothAvailable),

        MenuDetailModel(menuImage: Image("rcmMenuDetail6"),
                        menuKoreanName: "카라멜 마키아또",
                        menuEnglishName: "Caramel Macchiato",
                        menuText: "향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
                        menuPrice: "6,100원",
                        menuOption: .bothAvailable)
    ]
    
    // 여기 확인 필요
//    func getMenuDetail(for circleName: String) -> MenuDetailModel? {
//        return menuDetails.first { $0.menuKoreanName == circleName }
//    }
    
    func getMenuDetail(for name: String) -> MenuDetailModel? 
//        print("getmenudetail함수호출")
        return menuDetails.first(where: { $0.menuKoreanName == name })
    }
    
//    func getMenuDetail(for circleName: String) -> MenuDetailModel? {
//        print("🔍 찾는 메뉴: \(circleName)")
//        print("📋 현재 메뉴 리스트: \(menuDetails.map { $0.menuKoreanName })")
//
//        return menuDetails.first {
//            print("➡️ 비교: \(circleName) == \($0.menuKoreanName)")
//            return $0.menuKoreanName == circleName
//        }
//    }
}
