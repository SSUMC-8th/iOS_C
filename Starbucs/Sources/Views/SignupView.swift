//
//  SignupView.swift
//  Starbucs
//
//  Created by chohaeun on 3/30/25.
//

import SwiftUI
import Foundation

/*
struct SignupView: View {
    
   @State private var signid: String = ""
    @State private var signpassword: String = ""
    @State private var signemail: String = ""
    
    var signupViewModel : SignupViewModel = .init()
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            TestFiled
    
            Spacer()
            
            ButtonStack
            
            Spacer()
            
            }.padding(EdgeInsets(top: 0, leading: 19, bottom: 0, trailing: 19))
            .frame(width: 440, height: 956, alignment: .top)
            .background(.white)
        }
    
    
    
    private var TestFiled: some View {
        VStack(alignment:.leading){
            
            TextField("닉네임", text: $signid) //id: id가 아님?
                .font(Font.PretendardRegular18)
                .foregroundColor(Color("black01"))
                .onSubmit {
                    print("사용자가 닉네임 입력 완료: \(signid)")
                }
            
            Divider()
            
            Spacer().frame(height: 47)
            
            
            TextField("비밀번호", text: $signpassword)
                .font(Font.PretendardRegular18)
                .foregroundColor(Color("black01"))
                .onSubmit {
                    print("사용자가 비번 입력 완료: \(signpassword)")
                }
            // 커서 작동하는 동안 초록색으로 바꾸기
            
            Divider()
            Spacer().frame(height: 47)
            
            TextField("이메일", text: $signemail)
                .font(Font.PretendardRegular18)
                .foregroundColor(Color("black01"))
                .onSubmit {
                    print("사용자가 이메일 입력 완료: \(signemail)")
                }
            
            Divider()
            Spacer().frame(height: 47)
            
        }.padding(19)
    }
    
    
    private var ButtonStack: some View {
        
        
        Button(action: {
            signupViewModel.signUpSave(_id: signid,_password: signpassword,_email: signemail)
        }){
            ZStack(alignment: .center){
                
                Rectangle()
                    .frame(maxWidth: .infinity, minHeight: 58, maxHeight: 58, alignment: .center)
                    .cornerRadius(20)
                    .foregroundColor(Color("green01"))
                
                Text("생성하기")
                    .font(Font.PretendardMedium18)
                    .foregroundColor(.white)
                
            }.padding(19)
        }
    }
}
    


#Preview {
    SignupView()
}
*/
