//
//  DetailMenuViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 5/1/25.
//
import Foundation
import SwiftUI


class DetailMenuViewModel : ObservableObject {
    
    let menuInstanceArr: [DetailMenuModel] = [
        .init(image: .init(.confana), menuName: "에스프레소 콘파냐", menuEng: "Espresso Con Panna", price: 3000, decription: "신선한 에스프레소 어쩌구" , isHot: true ),
        .init(image: .init(.macchiato), menuName: "에스프레소 마키야또", menuEng: "MAki", price: 4000, decription: "mamamma", isHot: true)
    ]
    
}
