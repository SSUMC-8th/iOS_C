//
//  SignupView.swift
//  Starbucks
//
//  Created by 김나영 on 3/26/25.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var viewModel = SignupViewModel()
    
    var body: some View {
        signupTextFieldGroup
    }
    
    private var signupTextFieldGroup: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("닉네임")
                    .font(.PretendardRegular18)
                    .foregroundColor(Color("fontLightgrayColor"))
                TextField("", text: $viewModel.signupModel.nickname)
            }
            Divider()
                .padding(EdgeInsets(top:0, leading: 0, bottom: 49, trailing: 0))
            
            HStack {
                Text("이메일")
                    .font(.PretendardRegular18)
                    .foregroundColor(Color("fontLightgrayColor"))
                TextField("", text: $viewModel.signupModel.email)
            }
            Divider()
                .padding(EdgeInsets(top:0, leading: 0, bottom: 49, trailing: 0))
            
            HStack {
                Text("비밀번호")
                    .font(.PretendardRegular18)
                    .foregroundColor(Color("fontLightgrayColor"))
                TextField("", text: $viewModel.signupModel.password)
            }
            Divider()
            Spacer()
            
            Button(action: {
                viewModel.createAccount()
            }) {
                Text("생성하기")
                    .font(.PretendardSemiBold16)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(EdgeInsets(top: 19, leading: 0, bottom: 19, trailing: 0))
            .background(Color("mainGreenColor"))
            .cornerRadius(20)
        }
        .padding(EdgeInsets(top: 210, leading: 19, bottom: 72, trailing: 19))
    }
    
}

#Preview {
    SignupView()
}
