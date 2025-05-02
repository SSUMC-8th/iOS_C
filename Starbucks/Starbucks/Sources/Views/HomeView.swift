//
//  HomeView.swift
//  Starbucks
//
//  Created by 김나영 on 4/1/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var homeViewModel = HomeViewModel()
    @State private var recommendMenuViewModel = RecommendMenuViewModel()
    @State private var whatsNewViewModel = WhatsNewViewModel()
    @State private var dailyDessertViewModel = DailyDessertViewModel()
    @State private var menuDetailViewModel = MenuDetailViewModel()
    @State private var showPopup = false

    var body: some View {
        ScrollView {
            topBannerGroup
            recommendMenuGroup
            eventIntroBannerGroup
            whatsNewGroup
            serviceBannerGroup
            dailyDessertGroup
            bottomBannerGroup
        }
        .onAppear {
            showPopup = true
        }
        .sheet(isPresented: $showPopup) {
            PopUpAdView()
        }
    }
    
    private var topBannerGroup: some View {
        VStack {
            ZStack {
                Image("homeTopImg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                VStack {
                    Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                        .font(.PretendardSemiBold24)
                        .offset(y: 34)
                        .offset(x: -34)
                    Text("내용 보기 →")
                        .font(.PretendardLight13)
                        .foregroundStyle(Color("fontLightgrayColor"))
//                      .frame(alignment: .trailing)
                        .offset(y: 60)
                        .offset(x: 150)
                }
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("11★ until next Reward")
                        .font(.PretendardSemiBold16)
                        .foregroundStyle(Color("homeRewardColor"))
                        .padding(.leading, 28)
                    HStack(spacing: 0) {
                        Rectangle()
                            .fill(Color("homeRewardColor"))
                            .frame(width: 70, height: 10)
                        Rectangle()
                            .fill(Color(.gray.opacity(0.3)))
                            .frame(height: 10)
                    }
                    .cornerRadius(4)
                    .padding(.leading, 28)
                }
                
                HStack {
                    Text("1")
                        .font(.PretendardSemiBold38)
                    Text("/ ")
                        .font(.PretendardSemiBold24)
                        .foregroundStyle(Color("fontLightgrayColor")) +
                    Text("12")
                        .font(.PretendardSemiBold24)
                        .foregroundStyle(Color("homeRewardColor")) +
                    Text("★")
                        .font(.PretendardLight16)
                        .foregroundStyle(Color("homeRewardColor"))
                }
                .padding(.leading, 36)
                .padding(.trailing, 41)
            }
            Image("homeTeddyBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
        }
    }
    
    private var recommendMenuGroup: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(getNickname())")
                    .foregroundStyle(Color("homeRewardColor"))
                    .font(.PretendardSemiBold24)
                Text("님을 위한 추천 메뉴")
                    .font(.PretendardSemiBold24)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
            .padding(.bottom, 15)
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 15, content: {
                    ForEach(recommendMenuViewModel.menuDetails, id: \.circleName) { item in
                        CircleImageCard(circleInfo: item, menuDetailViewModel: menuDetailViewModel, layoutStyle: .vertical)
//                        CircleImageCard(circleInfo: item)
                    }
                })
            })
            .padding(.leading, 20)
            .padding(.bottom, 20)
        }
    }
    
    private var eventIntroBannerGroup: some View {
        VStack {
            Image("homeEventBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
            Image("homeIntroducingBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
        }
    }
    
    private var whatsNewGroup: some View {
        VStack(alignment: .leading) {
            Text("What's New")
                .font(.PretendardSemiBold24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.bottom, 10)
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 15, content: {
                    ForEach(whatsNewViewModel.whatsNewModel, id: \.whatsNewName) { item in
                        WhatsNewCard(whatsNewInfo: item)
                    }
                })
            })
            .padding(.leading, 10)
        }
    }
    
    private var serviceBannerGroup: some View {
        VStack {
            Image("homeMugBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
//                .padding(.bottom, 14)
            Image("homeBenefitBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
//                .padding(.bottom, 14)
            Image("homeDeliveryBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
//                .padding(.bottom, 14)
        }
    }
    
    private var dailyDessertGroup: some View {
        VStack(alignment: .leading) {
            Text("하루가 달콤해지는 디저트")
                .font(.PretendardSemiBold24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 15)
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 15, content: {
                    ForEach(dailyDessertViewModel.dailyDessertModel, id: \.circleName) { item in
                        CircleImageCard(circleInfo: RecommendMenuModel(circleImage: item.circleImage, circleName: item.circleName), menuDetailViewModel: nil, layoutStyle: .vertical)
//                        CircleImageCard(circleInfo: RecommendMenuModel(circleImage: item.circleImage, circleName: item.circleName))
                    }
                })
            })
            .padding(.leading, 20)
            .padding(.bottom, 20)
        }
    }
    
    private var bottomBannerGroup: some View {
        VStack {
            Image("homeColdbrewBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
//                .padding(.bottom, 14)
            Image("homeFavoritesBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
//                .padding(.bottom, 14)
            Image("homeSizeupBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
//                .padding(.bottom, 14)
        }
    }
    
    private func getNickname() -> String {
        if let nickname = homeViewModel.inputNickname {
            return nickname
        } else {
            return "(설정 닉네임)"
        }
    }
}

#Preview {
    HomeView()
}
