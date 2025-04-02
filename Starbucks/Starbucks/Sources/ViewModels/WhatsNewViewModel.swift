//
//  WhatsNewViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

@Observable
class WhatsNewViewModel {
    let whatsNewModel: [WhatsNewModel] = [
        WhatsNewModel(whatsNewImage: Image("whatsNew1"), whatsNewName: "25년 3월 일회용컵 없는 날 캠페...", whatsNewText: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."),
        WhatsNewModel(whatsNewImage: Image("whatsNew2"), whatsNewName: "스타벅스 ooo점을 찾습니다", whatsNewText: "스타벅스 커뮤니티 스토어 파트너를 웅영할 기관을 공모합니다."),
        WhatsNewModel(whatsNewImage: Image("whatsNew3"), whatsNewName: "2월 8일, 리저브 스프링 신규 커...", whatsNewText: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.")
    ]
}
