//
//  HomeViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 4/1/25.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @AppStorage("nickname") var inputNickname: String?
}
