//
//  LoginView.swift
//  Starbucs
//
//  Created by chohaeun on 3/21/25.
//

import SwiftUI

struct LoginView : View {
    var body: some View {
        
        VStack {
            
            Spacer()
            title
            Spacer()
            middle
            Spacer()
            bottom
        }.padding(EdgeInsets(top: 0, leading: 19, bottom: 0, trailing: 19))
        
    }
}

private var title : some View {
    VStack(alignment: .leading){
        
        Image(.starbucsLogo)
            .aspectRatio(contentMode: .fit)
            .frame(width: 97, height: 95)
            
        
        Spacer().frame(height: 28)
        
        Text("안녕하세요.\n스타벅스입니다.")
            .font(Font.PretendardExtraBold24)
            .kerning(1.2)
            .foregroundColor(.black)
        
        Spacer().frame(height: 19)
        
        Text("회원 서비스 이용을 위해 로그인 해주세요")
            .font(Font.PretendardMedium16) //변경
            .foregroundColor(Color("gray01"))
        
    }.frame(maxWidth: .infinity, alignment: .leading)
}


private var middle : some View {
    VStack(alignment: .center){
        
        VStack (alignment: .leading){
                
            Button(action: {
                    print("메롱메롱")
                }){
                    Text("아이디")
                        .font(Font.PretendardRegular13) //변경
                        .foregroundColor(Color("black01"))
                    
                    //Divider() 여기에 있는 거랑 차이가 남. 왤까?
                }
                
                Divider()
                
                Spacer().frame(height: 47)
                
                Button(action: {
                    print("메롱메롱")
                }) {
                    Text("비밀번호")
                        .font(Font.PretendardRegular13) //변경
                        .foregroundColor(Color("black01"))
                }
                
                Divider()
                       
                Spacer().frame(height: 47)
                
            }.shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)

    
        Button(action: {
            print("메롱메롱")
        }) {
            
            Text("로그인하기")
                .font(Font.PretendardMedium16)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 46)
                .background(Color("green01"))
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
    }
}


private var bottom : some View {
    
    VStack(alignment: .center){
        
        Spacer().frame(height: 19)
        
        Button(action: {
            print("메롱메롱")
        }) {
            Text("이메일로 회원가입하기")
            .underline(true, pattern: .solid)
            .font(Font.PretendardRegular12) //변경
            .foregroundColor(Color("gray01"))
        }
        
        Spacer().frame(height: 19)
        
        Button(action: {
            print("메롱메롱")
        }) {
            Image(.kakaoLogin)
                .frame(width: 306)
                .aspectRatio(contentMode: .fit)
        }
        
        Spacer().frame(height: 19)
        
        Button(action: {
            print("메롱메롱")
        }) {
            Image(.appleLogin)
                .frame(width: 306)
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    LoginView()
}
