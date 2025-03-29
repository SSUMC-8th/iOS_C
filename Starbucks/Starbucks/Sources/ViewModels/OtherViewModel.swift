//
//  OtherViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 3/27/25.
//

import Foundation
import SwiftUI

class OtherViewModel: ObservableObject {
    @AppStorage("nickname") var inputNickname: String = "(작성한 닉네임)"
}
