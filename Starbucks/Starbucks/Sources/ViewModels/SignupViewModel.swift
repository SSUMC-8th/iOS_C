//
//  SignupViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 3/26/25.
//

import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @Published var signupModel = SignupModel()
    
    @AppStorage("nickname") private var inputNickname: String = ""
    @AppStorage("email") private var inputEmail: String = ""
    @AppStorage("password") private var inputPassword: String = ""

    func createAccount() {
        inputNickname = signupModel.nickname
//        inputNickname = "나나옹옹"
        inputEmail = signupModel.email
        inputPassword = signupModel.password
    }
}
