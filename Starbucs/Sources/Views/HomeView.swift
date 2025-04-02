//
//  HomeView.swift
//  Starbucs
//
//  Created by chohaeun on 4/2/25.
//
import SwiftUI
import Foundation


struct HomeView: View {
    

    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Topbanner
                Spacer().frame(height:23)
                promotionbanner
                Spacer().frame(height:20)
                recommandMenu
                Spacer().frame(height:20)
                eventBanner
                Spacer().frame(height:20)
                serviceSuscibe
                Spacer().frame(height:20)
                whatnew
                Spacer().frame(height:20)
                pop
            }.padding(.horizontal, 10)
          
        }.scrollIndicators(.visible, axes: .vertical) // 스크롤 표시기 활성화
            .safeAreaPadding(.horizontal)
    }
    
   private var Topbanner: some View {
        
       ZStack{
           
           Image(.topimg)
           .resizable()
           .aspectRatio(contentMode: .fill)
           .frame(maxWidth: .infinity)
           .frame(height: 226)
           
           
           VStack(alignment: .leading){
               
               Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                   .font(Font.PretendardBold24)
                   .foregroundColor(.black)
               
               Spacer()
               
               HStack{
                   
                   Text("11* until next Reward")
                       .font(Font.PretendardBold24)
                       .foregroundColor(.black)
                   
                   Text("1/12*")
                       .font(Font.PretendardSemiBold16)
                       .foregroundColor(.black)
                   
               }
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
    }
    
    
    private var recommandMenu: some View {
        
        let rows = Array(repeating: GridItem(.fixed(80)), count: 1)

        return ScrollView(.horizontal) {
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(1...6, id: \.self) { index in
                                
                                
                                // 서클 이미지 카드 하위뷰로 생성하도록 ㄱㄱ
                                Text("Item \(index)")
                                    .frame(width: 80)
                                    .frame(maxHeight: .infinity)
                                    .background(Color.green.opacity(0.7))
                            }
                        }
                    }
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
    }
    
    private var whatnew: some View {
        
        let rows = Array(repeating: GridItem(.fixed(80)), count: 1)

        return ScrollView(.horizontal) {
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(1...6, id: \.self) { index in
                                
                                
                                // 서클 이미지 카드 하위뷰로 생성하도록 ㄱㄱ
                                Text("Item \(index)")
                                    .frame(width: 80)
                                    .frame(maxHeight: .infinity)
                                    .background(Color.green.opacity(0.7))
                            }
                        }
                    }
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
        }
    }
    
}

#Preview {
    HomeView()
}

