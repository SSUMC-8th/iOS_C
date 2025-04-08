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
        .init(image: .init(.mug), title: "1번 뉴스", content: "Enjoy your coffee in a mug"),
        .init(image: .init(.mug), title: "2번 뉴스", content: "Enjoy your coffee in a mug"),
        .init(image: .init(.mug), title: "3번 뉴스", content: "Enjoy your coffee in a mug"),
        .init(image: .init(.mug), title: "4번 뉴스", content: "Enjoy your coffee in a mug")
    ]
}
