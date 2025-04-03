//
//  HomeView.swift
//  Starbucs
//
//  Created by chohaeun on 4/2/25.
//
import SwiftUI
import Foundation


struct HomeView: View {
    
    @StateObject private var signupviewModel = SignupViewModel()
    
    @State private var dessertviewModel = DessertsViewModel()
    
    @State private var specialtyMenuviewModel = SpecialtyMenuViewModel()
    
    @State private var whatsnewviewModel = WhatsnewViewModel()

    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20){
                Topbanner
                Spacer().frame(height:3)
                promotionbanner
                recommandMenu
                eventBanner
                serviceSuscibe
                whatnew
                pop
                bread
                other
            }.frame(maxWidth: .infinity)
            .padding(.horizontal, 10)
          
        }.frame(maxWidth: .infinity)
        //.frame(maxWidth: .infinity, alignment: .topLeading)
        .scrollIndicators(.visible, axes: .vertical)
    }
    
   private var Topbanner: some View {
        
       ZStack (alignment: .leading) {
           
           Image(.topimg)
           .resizable()
           .aspectRatio(contentMode: .fill)
           .frame(maxWidth: .infinity)
           .frame(height: 226)
           
           VStack(alignment: .leading){
               
               Spacer()
               
               Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                   .font(Font.PretendardBold24)
                   .foregroundColor(.black)
                   .padding(.leading, 28)
               
               Button(action:{
                   print("내용 보기 클릭")
               }) {
                   Text("내용 보기 →")
                       .font(.PretendardLight14)
                       .foregroundStyle(.black)
               }.frame(alignment: .trailing) // 왜 안 되는 것인가

               Spacer()
               
               HStack{
                   VStack(alignment: .leading) {
                       
                       Text("11★ until next Reward")
                           .font(.PretendardSemiBold16)
                           .foregroundStyle(.black)
                       
                       ZStack (alignment: .leading){
                           Rectangle()
                               .fill(Color(.gray.opacity(0.3)))
                               .frame(width: 256, height: 10)
                           
                           Rectangle()
                               .fill(.black)
                               .frame(width: 111, height: 10)
                       }
                       .cornerRadius(4)

                   }
               }
               .padding(.leading, 28)
           }
       }.frame(maxWidth: .infinity)
        .frame(height: 226)
    }
    
    
    private var promotionbanner: some View {
        
        Image(.bluebanner)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(maxWidth: .infinity)
        .frame(height: 183)
        .cornerRadius(4)
        .shadow(color: .black.opacity(0.06), radius: 2, x: 0, y: 6)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
        .padding(.horizontal, 10)
    }
    
    private var recommandMenu: some View {
        
        let rows = Array(repeating: GridItem(), count: 1)
        
        return VStack(alignment: .leading) {
            
            Text("\(signupviewModel.signupModel.nickname)님을 위한 추천 메뉴")
                .font(Font.PretendardSemiBold24)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 16) {
                    
                    ForEach(0...5, id: \.self) { index in
                        
//                        Image(.eventBanner)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 80)
                        
                        CircleImageCard(dessertsinfo: dessertviewModel.dessertModel[index])
                        
                        //재사용 어떻게 하지??
                        //CircleImageCard(specialtyinfo: specialtyMenuviewModel.specialtyMenuModel[index])
                    }
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
    
    private var eventBanner: some View {
        
        Image(.eventBanner)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(maxWidth: .infinity)
        .frame(height: 451)
        .cornerRadius(4)
        .shadow(color: .black.opacity(0.06), radius: 2, x: 0, y: 6)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
        .padding(.horizontal, 10)
    }
    
    private var serviceSuscibe: some View {
        
        Image(.serviceSuscibe)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(maxWidth: .infinity)
        .frame(height: 199)
        .cornerRadius(4)
        .shadow(color: .black.opacity(0.06), radius: 2, x: 0, y: 6)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
        .padding(.horizontal, 10)
    }
    
    private var whatnew: some View {
        
        let rows = Array(repeating: GridItem(), count: 1)
        
        return VStack(alignment: .leading) {
            
            Text("What’s New")
                .font(Font.PretendardSemiBold24)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
               
                
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(0...2, id: \.self) { index in
                        WhatsNewCardView(whatsNewinfo: whatsnewviewModel.whatsnewModel[index])
                    }
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
    
    private var pop: some View{
        
        VStack{
            
            Group{
                
                Image(.mug)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 218)
                
                Spacer().frame(height:14)
                
                Image(.online)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 273)
                
                Spacer().frame(height:14)
                
                Image(.deliver)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 218)
                
            }
            .cornerRadius(4)
            .shadow(color: .black.opacity(0.06), radius: 2, x: 0, y: 6)
            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
            .padding(.horizontal, 10)
        }
    }
    
    private var bread: some View {
        let rows = Array(repeating: GridItem(), count: 1)
        
        return VStack(alignment: .leading) {
            
            Text("하루가 달콤해지는 디저트")
                .font(Font.PretendardSemiBold24)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(0...5, id: \.self) { index in
                        CircleImageCard(dessertsinfo: dessertviewModel.dessertModel[index])
                    }
                }
            }.padding(.horizontal, 10)
        } .padding(.horizontal, 10)
    }
    
    private var other: some View{
        
        VStack{
            
            Group{
                
                Image(.cold)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 182)
                
                Spacer().frame(height:14)
                
                Image(.mainme)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 360)
                
                Spacer().frame(height:14)
                
                Image(.make)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 182)
                
            }
            .cornerRadius(4)
            .shadow(color: .black.opacity(0.06), radius: 2, x: 0, y: 6)
            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
            .padding(.horizontal, 10)
        }
    }
    
}

#Preview {
    HomeView()
}

