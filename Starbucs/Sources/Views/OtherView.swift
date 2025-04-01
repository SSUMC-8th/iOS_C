//
//  OtherView.swift
//  Starbucs
//
//  Created by chohaeun on 4/1/25.
//

import SwiftUI
import Foundation

struct OtherView: View{
    
    var body: some View{
        
        Title
        
        VStack{
            Spacer()
            UserSection
            Spacer()
            PaySection
            Spacer()
            SupportSection
           
        }.padding(.horizontal, 10)
            .frame(maxWidth: .infinity,alignment: .top)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        
    }
    
    
    
    private var Title: some View{
        
        HStack(alignment: .center, spacing: 0) {
            
            Text("Other")
                .font(Font.PretendardBold24)
                .foregroundColor(.black)
                .padding(10)
                .padding(EdgeInsets(top: 0, leading: 23.5, bottom: 16, trailing: 0))
            
            Spacer()
            
            Button(action: {
                print("로그아웃")
            }) {
                Image(.logout)
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .trailing)
            }.padding(EdgeInsets(top: 0, leading:0, bottom: 16, trailing: 23.5))
            

            
        }.frame(maxWidth: .infinity)
            .frame(height: 120, alignment: .bottomLeading)
            .background(.white)
        
        
    }
    
    private var UserSection: some View{
        VStack(alignment: .center) {
            
            Text("(작성한 닉네임) 님")
                .font(
                    Font.custom("Pretendard", size: 24)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color("green01"))
            
            Text("환영합니다!")
                .font(Font.PretendardSemiBold24)
                .multilineTextAlignment(.trailing)
                .foregroundColor(.black)
            
            Spacer().frame(height: 24)
            
            HStack(alignment: .top, spacing: 10.5) {
                makeUserInfo(name:"별 히스토리", image: "star_history")
                makeUserInfo(name:"전자영수증", image: "receipt")
                makeUserInfo(name:"나만의 메뉴", image: "my")
            }.padding(.horizontal, 24)
            .padding(.vertical, 0)
            
        }
    }
    
    private var PaySection: some View{
        VStack(alignment: .leading, spacing: 8) {
            Text("Pay")
                .font(Font.PretendardSemiBold18)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
            
            HStack(alignment: .top) {
                makeInfoButton(name:"스타벅스 카드등록", image: "card")
                Spacer()
                makeInfoButton(name:"카드 교환권 등록", image: "changecard")
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .top)
            
            HStack(alignment: .top) {
                makeInfoButton(name:"쿠폰 등록", image: "coupon")
                Spacer()
                makeInfoButton(name:"쿠폰 히스토리", image: "couponhis")
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .top)
            
            
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 327, height: 1, alignment: .center)
            .background(.black.opacity(0.12))
        }
    }
    
    private var SupportSection: some View{
        VStack(alignment: .leading, spacing: 8) {
            Text("고객지원")
                .font(Font.PretendardSemiBold18)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
            
            HStack(alignment: .top) {
                makeInfoButton(name:"스토어 케어", image: "store")
                Spacer()
                makeInfoButton(name:"고객의 소리", image: "usersound")
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .top)
            
            HStack(alignment: .top) {
                makeInfoButton(name:"매장 정보", image: "market")
                Spacer()
                makeInfoButton(name:"반납기 정보", image: "return")
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .top)
            
            HStack(alignment: .top) {
                makeInfoButton(name:"마이 스타벅스 리뷰", image: "myreview")
                Spacer()
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .top)
        }
    }
    
    
    
    private func makeUserInfo(name: String, image: String) -> some View {
        Button(action: {
            print(name)
        }, label: {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 48, height: 48)
                
                Text(name).font(Font.PretendardSemiBold16)
                    .foregroundColor(Color("black03"))
                
            }.padding(.horizontal, 0)
                .padding(.vertical, 19)
                .frame(width: 102, height: 108, alignment: .center)
                .background(.white)
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
        })
    }
    
    
    private func makeInfoButton(name: String, image: String) -> some View {
        Button(action: {
            print(name)
        }, label:{
            HStack(alignment: .center, spacing: 4) {
                
                Image(image)
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Text(name).font(Font.PretendardSemiBold16)
                    .foregroundColor(Color("black03"))
                
            }.frame(width: 157, alignment: .leading)
            
        })
    }}

#Preview {
    OtherView()
}
