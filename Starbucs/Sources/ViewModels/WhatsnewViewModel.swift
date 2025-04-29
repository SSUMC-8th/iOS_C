//
//  WhatsnewViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 4/3/25.
//

import Foundation
import SwiftUI

class WhatsnewViewModel: ObservableObject{
    
    let whatsnewModel: [WhatsNewModel] = [
        .init(image: .init(.mug), title: "25년 3월 일회용컵 없는 날 캠페..", content: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."),
        .init(image: .init(.mug), title: "스타벅스 ooo점을 찾습니다", content: "Enjoy your coffee in a mug"),
        .init(image: .init(.mug), title: "2월 8일, 리저브 스프링 신규 커...", content: "Enjoy your coffee in a mug"),
        .init(image: .init(.mug), title: "4번 뉴스", content: "Enjoy your coffee in a mug")
    ]
}
