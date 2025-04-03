//
//  SignupViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 3/30/25.
//

import Foundation
import SwiftUI

// @Observable 이거로 하면 안 되나?
class SignupViewModel : ObservableObject {
    
    @Published var signupModel = SignupModel(nickname: "", password: "", email: "")
    
    @AppStorage("nickname") private var nicknameStorage: String = ""
    @AppStorage ("password") private var passwordStorage: String = ""
    @AppStorage ("email") private var emailStorage: String = ""
    //@AppStorage("id") var idStorage: String = ""
    
    
    func createAccount() {
        nicknameStorage = signupModel.nickname
       // idStorage = signupModel.id
        passwordStorage = signupModel.email
        emailStorage = signupModel.password
    }

            
}

