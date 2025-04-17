//
//  OtherView.swift
//  Starbucks
//
//  Created by 김나영 on 3/27/25.
//

import SwiftUI

struct OtherView: View {
    @StateObject private var otherViewModel = OtherViewModel()
    @StateObject private var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                topBackgroundGroup
                VStack {
                    topMemberInfoGroup
                    Spacer()
                    payButtonGroup
                    Spacer()
                    helpButtonGroup
                }
                .background(Color("otherViewBgColor"))
            }
        }
    }
    
    private var topBackgroundGroup: some View {
        HStack(alignment: .top) {
            Text("Other")
                .font(.PretendardBold24)
            Spacer()
            Button(action: { loginViewModel.logout() }) {
                Image("logout")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
//            .fullScreenCover(isPresented: $loginViewModel.isLoggedIn) {
//                LoginView()
//            }
            //로그아웃 안됨!!!!!!!!!
        }
        .padding(.horizontal, 23.5)
        .padding(.bottom, 16)
    }
    
    private var topMemberInfoGroup: some View {
        VStack {
            HStack(spacing: 0) {
                Text("\(otherViewModel.inputNickname)")
                    .foregroundColor(Color("mainGreenColor"))
                Text(" 님")
            }
            .font(.PretendardSemiBold24)
            .padding(.top, 41)
            .padding(.bottom, 5)
            Text("환영합니다!🙌")
                .font(.PretendardSemiBold24)
                .padding(.bottom, 24)
            HStack(spacing: 10.5) {
                WelcomeButton(imageName: "starHistory", title: "별 히스토리")
                NavigationLink(destination: OtherReceiptView()) {
                    WelcomeButton(imageName: "receipt", title: "전자영수증")
                }
                WelcomeButton(imageName: "myMenu", title: "나만의 메뉴")
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color("otherViewBgColor"))
    }
    
    private var payButtonGroup: some View {
        VStack(alignment: .leading) {
            Text("Pay")
                .font(.PretendardSemiBold18)
                .padding(.bottom, 8)
            HStack {
                PayHelpButton(imageName: "payButton1", title: "스타벅스 카드 등록")
                Spacer()
                PayHelpButton(imageName: "payButton2", title: "카드 교환권 등록")
            }
            HStack {
                PayHelpButton(imageName: "payButton3", title: "쿠폰 등록")
                Spacer()
                PayHelpButton(imageName: "payButton4", title: "쿠폰 히스토리")
            }
            Divider()
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 10)
    }
    
    private var helpButtonGroup: some View {
        VStack(alignment: .leading) {
            Text("고객 지원")
                .font(.PretendardSemiBold18)
                .padding(.bottom, 8)
            HStack {
                PayHelpButton(imageName: "helpButton1", title: "스토어 케어")
                Spacer()
                PayHelpButton(imageName: "helpButton2", title: "고객의 소리")
            }
            HStack {
                PayHelpButton(imageName: "helpButton3", title: "매장 정보")
                Spacer()
                PayHelpButton(imageName: "helpButton4", title: "반납기 정보")
            }
            HStack {
                PayHelpButton(imageName: "helpButton5", title: "마이 스타벅스 리뷰")
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
//        .padding(.bottom, 41)
        .padding(.horizontal, 10)
        .padding(.bottom, 41)
    }
    
    struct WelcomeButton: View {
        let imageName: String
        let title: String
        
        init(imageName: String, title: String) {
            self.imageName = imageName
            self.title = title
        }
        
        var body: some View {
            Button(action: { print(title) }) {
                VStack(spacing: 4) {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    Text(title)
                        .font(.PretendardSemiBold16)
                        .foregroundColor(.black)
                }
            }
            .frame(width: 102, height: 102)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
        }
    }
    
    struct PayHelpButton: View {
        let imageName: String
        let title: String
        
        init(imageName: String, title: String) {
            self.imageName = imageName
            self.title = title
        }
        
        var body: some View {
            Button(action: { print(title) }) {
                HStack(spacing: 4) {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 4)
                    Text(title)
                        .font(.PretendardSemiBold16)
                        .foregroundColor(.black)
                }
            }
            .frame(width: 160, alignment: .leading)
            .padding(.bottom, 16)
            .padding(.top, 16)
        }
    }
}

#Preview {
    OtherView()
}
