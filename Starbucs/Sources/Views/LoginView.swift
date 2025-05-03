//
//  LoginView.swift
//  Starbucs
//
//  Created by chohaeun on 3/21/25.
//

import SwiftUI

struct LoginView : View {
    
    
    @StateObject private var loginViewModel = LoginViewModel()
    @StateObject private var router = NavigationRouter()
    
    
    @State var loginid: String = ""
    @State var loginpassword: String = ""
    
    var body: some View {
        NavigationStack(path: $router.path) {
            VStack {
                Spacer()
                title
                Spacer()
                middle
                Spacer()
                bottom
                Spacer()
                
            }.padding(EdgeInsets(top: 0, leading: 19, bottom: 0, trailing: 19))
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .home:
                        HomeView()
                    case .detail(let title):
                        HomeView()
                    case .profile(let userID):
                        HomeView()
                    case .tap:
                        SignupView()
                    }
                }
        }
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
        // 둘 다 리딩값 줘야하는 이유: 브이스택 안에 있는 자식 개체에서 가장 큰 애를 따라감.
        // 스타벅스를 HStack : 배경색 주고 테스트해보기!
    }
    
    
        private var middle : some View {
            
            VStack(alignment: .center){
                
                VStack (alignment: .leading){
                    
                    TextField("아이디", text: $loginViewModel.loginmodel.id)
                        .font(Font.PretendardRegular13)
                        .foregroundColor(Color("black01"))
                        .onSubmit {
                            print("사용자가 아이디 입력 완료: \($loginViewModel.loginmodel.id)")
                        }
                    
                    Divider().foregroundColor(Color("green01"))
                    
                    Spacer().frame(height: 47)
                    
                    
                    TextField("비밀번호", text: $loginViewModel.loginmodel.password)
                        .font(Font.PretendardRegular13)
                        .foregroundColor(Color("black01"))
                        .onSubmit {
                            print("사용자가 비번 입력 완료: \($loginViewModel.loginmodel.password)")
                        }
                    // 커서 작동하는 동안 초록색으로 바꾸기
                    
                    Divider().foregroundColor(Color("green01"))
                    
                    Spacer().frame(height: 47)
                    
                }.shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                
                
                Button(action: {
                    loginViewModel.login(id: loginid,pw: loginpassword)
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
                .fullScreenCover(isPresented: $loginViewModel.isLogin) {
                    TapView()
                }
                
            }
        }
    
    
    private var bottom : some View {

        VStack(alignment: .center){
          
                Spacer().frame(height: 19)
                
                Button(action: {
                    print("메롱메롱")
                    router.push(.tap)
                }) {
                    Text("이메일로 회원가입하기")
                        .underline(true, pattern: .solid)
                        .font(Font.PretendardRegular12) //변경
                        .foregroundColor(Color("gray01"))
                }
                Spacer().frame(height: 19)
                
                Button(action: {
                    print("메롱메롱")
                    router.push(.tap)
                }) {
                    Image(.kakaoLogin)
                        .frame(width: 306)
                        .aspectRatio(contentMode: .fit)
                }
                
                Spacer().frame(height: 19)
                
                Button(action: {
                    print("메롱메롱")
                    router.push(.tap)
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
