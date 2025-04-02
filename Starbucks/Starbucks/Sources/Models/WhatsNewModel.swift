//
//  WhatsNewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import Foundation
import SwiftUI

struct WhatsNewModel: Identifiable {
    let id = UUID()
    let whatsNewImage: Image
    let whatsNewName: String
    let whatsNewText: String
}
