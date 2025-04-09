//
//  LoginViewModel.swift
//  Starbucks
//
//  Created by 김나영 on 3/19/25.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var loginModel = LoginModel()
    @Published var isLoggedIn = false
    
    func login(id: String, password: String) {
        if id == loginModel.id && password == loginModel.password {
            isLoggedIn = true
        }
        else {
            isLoggedIn = false
        }
    }
    
    func logout() {
        isLoggedIn = false
    }
}
