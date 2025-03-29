//
//  LoginView.swift
//  Starbucks
//
//  Created by 김나영 on 3/19/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    @FocusState private var isIdFocused: Bool
    @FocusState private var isPasswordFocused: Bool
    
    var body: some View {
        NavigationStack {
            mainLoginGroup
        }
    }
    
    private var mainLoginGroup: some View {
        VStack {
            Spacer()
            topLogoGroup
            Spacer()
            inputLoginGroup
            Spacer()
            bottomLoginGroup
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 19, bottom: 0, trailing: 19))
        .background(Color.clear)
//        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
    }

    private var topLogoGroup: some View {
        VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 97, height: 95)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 28, trailing: 0))
                Text("안녕하세요.")
                    .font(.PretendardBold24)
                Text("스타벅스입니다.")
                    .font(.PretendardBold24)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 19, trailing: 0))
                Text("회원 서비스 이용을 위해 로그인 해주세요")
                    .font(.PretendardLight16)
                    .foregroundStyle(Color("fontLightgrayColor"))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var inputLoginGroup: some View {
        VStack {
            Group {
                HStack {
                    Text("아이디")
                        .font(.PretendardLight13)
                        .frame(height: 1)
                    TextField("", text: $viewModel.loginModel.id)
                        .focused($isIdFocused)
                }
                .frame(height: 12.57)
                Divider()
                    .frame(height: 1)
                    .background(isIdFocused ? Color("mainGreenColor") : Color("fontLightgrayColor"))
                    .padding(EdgeInsets(top:0, leading: 0, bottom: 47, trailing: 0))
                
                HStack {
                    Text("비밀번호")
                        .font(.PretendardLight13)
                        .frame(height: 1)
                    TextField("", text: $viewModel.loginModel.password)
                        .focused($isPasswordFocused)
                }
                .frame(height: 12.57)
                Divider()
                    .frame(height: 1)
                    .background(isPasswordFocused ? Color("mainGreenColor") : Color("fontLightgrayColor"))
                    .padding(EdgeInsets(top:0, leading: 0, bottom: 47, trailing: 0))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button(action: { /*아직안함*/ }) {
                Text("로그인하기")
                    .font(.PretendardSemiBold16)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
            .background(Color("mainGreenColor"))
            .cornerRadius(20)
        }
    }
    
    private var bottomLoginGroup: some View {
        VStack(alignment: .center) {
//            Button(action: { /*아직안함*/ }) {
            NavigationLink(destination: SignupView()) {
                Text("이메일로 회원가입하기")
                    .font(.PretendardLight12)
                    .foregroundStyle(Color("fontLightgrayColor"))
                    .underline()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 19, trailing: 0))
            Image("kakaoLogin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets(top: 0, leading: 48, bottom: 19, trailing: 48))
                
            Image("appleLogin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets(top: 0, leading: 48, bottom: 0, trailing: 48))
        }
    }
}



#Preview {
    LoginView()
}
