//
//  LoginView.swift
//  Starbucs
//
//  Created by chohaeun on 3/21/25.
//

import SwiftUI

struct LoginView : View {
    
    
    @State private var loginid: String = ""
    @State private var loginpassword: String = ""
    
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
    
    private var title : some View {
        VStack(alignment: .leading){
            
            Image(.starbucsLogo)
                .resizable()
                .frame(width: 97, height: 95)
                .aspectRatio(contentMode: .fit)
            
            //생성자 순서가 중요함
            
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
        
        //부모뷰 기준으로 지정하려면 프레임 -> 해결해서 공유하기...
    }

    
    private var middle : some View {
        
        VStack(alignment: .center){
            VStack (alignment: .leading){
                
         
                TextField("아이디", text: $loginid) //id: id가 아님?
                        .font(Font.PretendardRegular13)
                    .foregroundColor(Color("black01"))
                        .onSubmit {
                        print("사용자가 아이디 입력 완료: \(loginid)")
                                   }
                
                Divider().foregroundColor(Color("green01"))
                
                Spacer().frame(height: 47)
                
           
                    TextField("비밀번호", text: $loginpassword)
                        .font(Font.PretendardRegular13)
                        .foregroundColor(Color("black01"))
                        .onSubmit {
                        print("사용자가 비번 입력 완료: \(loginpassword)")
                                   }
                // 커서 작동하는 동안 초록색으로 바꾸기
                
                Divider().foregroundColor(Color("green01"))
                
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
    
    
//// 텍스트 필드
//    struct CounterView: View {
//        @State private var text: String = ""
//
//        var body: some View {
//            VStack {
//                Text("텍스트 내용: \(text)")
//                    .font(.largeTitle)
//
//                TextField("아무 값을 입력해보세요!", text: $text)
//                    .frame(width: 350)
//            }
//        }
//    }
    
    
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
}


#Preview {
    LoginView()
}
