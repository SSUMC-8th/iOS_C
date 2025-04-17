//
//  RecieptSegment.swift
//  Starbucks
//
//  Created by 김나영 on 4/8/25.
//

import Foundation

enum ReceiptSegment: Int, CaseIterable, Identifiable {
    case receipt1
    case second
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .receipt1:
            return "첫 번째"
        case .second:
            return "두 번째"
        }
    }
    
    var imageName: String {
        switch self {
        case .receipt1:
            return "first"
        case .second:
            return "second"
        }
    }
}
