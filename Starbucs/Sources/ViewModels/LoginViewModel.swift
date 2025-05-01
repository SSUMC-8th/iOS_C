//
//  LoginViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 3/21/25.
//
import Foundation
import SwiftUI


class LoginViewModel : ObservableObject {
    
    @Published var loginmodel = LoginModel(id: "", password: "")

    @AppStorage("nickname") private var nickname: String = ""
    @AppStorage ("password") private var password: String = ""
    
    func login(id: String , pw: String){
        if (nickname == loginmodel.id && password == loginmodel.password){
            print("로그인 성공")
        }
        else{
            print("로그인 실패")
        }
    }
}
