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
    
    @AppStorage("nickname") private var nickname: String = ""
    @AppStorage ("password") private var password: String = ""
    @AppStorage ("email") private var email: String = ""
    
    @Published var signupModel = SignupModel(nickname: "", password: "", email: "")
    
    
    func createAccount(N: String, P: String, E: String) {
//        signupModel.nickname = N
//        signupModel.password = P
//        signupModel.email = E
        nickname = N
        password = P
        email = E
        
        print(nickname)
        print(password)
        print(email)
        
    }
}

