//
//  LoginViewModel.swift
//  Starbucs
//
//  Created by chohaeun on 3/21/25.
//
import Foundation
import SwiftUI


class LoginViewModel : ObservableObject {
    
    @Published var loginmodel = LoginModel(id: "", password: "", isLogin: false, isAct: false)

    @AppStorage("nickname") private var nickname: String = ""
    @AppStorage ("password") private var password: String = ""
    //@AppStorage ("isLogin") private var isLogin: Bool = false
   
    @Published var isLogin: Bool = false // private var isLogin 대신
    @Published var isAct: Bool = false
    
    func login(id: String , pw: String){
        if (nickname == loginmodel.id && password == loginmodel.password){
            print("로그인 성공")
            isLogin = true
        }
        else{
            print("로그인 실패")
        }
    }
}
