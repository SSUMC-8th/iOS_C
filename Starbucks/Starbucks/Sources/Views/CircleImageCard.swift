//
//  CircleImageCard.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import SwiftUI

struct CircleImageCard: View {
    let circleInfo: RecommendMenuModel
    let menuDetailViewModel: MenuDetailViewModel?
    
    var body: some View {
            // 여기 확인 필요
        if let menuDetailViewModel, let menuDetail = menuDetailViewModel.getMenuDetail(for: circleInfo.circleName) {
            NavigationLink(destination: MenuDetailCard(menuDetail: menuDetail)) {
                cardGroup
            }
        } else {
            cardGroup
        }
//        cardGroup
    }
    
    private var cardGroup: some View {
        VStack {
            circleInfo.circleImage
                .resizable()
                .frame(width: 130, height: 130)
                .padding(.bottom, 10)
            Text(circleInfo.circleName)
                .font(.PretendardSemiBold14)
                .foregroundColor(.black)
        }
//        .onAppear {
//            if let menuDetailViewModel, let _ = menuDetailViewModel.getMenuDetail(for: circleInfo.circleName) {
//                print("✅ \(circleInfo.circleName) -> 네비게이션 가능")
//            } else {
//                print("❌ \(circleInfo.circleName) -> 네비게이션 불가 (데이터 없음)")
//            }
//        }
    }
}

#Preview {
    CircleImageCard(circleInfo: RecommendMenuModel(circleImage: Image("rcmMenu1"), circleName: "에스프레소 콘파나"), menuDetailViewModel: nil)
}

//
//struct CircleImageCard: View {
//    let circleInfo: RecommendMenuModel
////    let menuDetailViewModel: MenuDetailViewModel?
////    let recommendMenus: [RecommendMenuModel]
//
//    var body: some View {
////        NavigationView {
////            List(recommendMenus) { menu in
////                //여기봐
////                if let detail = recommendMenus.first(where: { $0.menuKoreanName == menu.circleName }) {
////                    NavigationLink(destination: MenuDetailCard(menuDetail: detail)) {
////                        cardGroup
////                    }
////                }
////            }
////        }
//        cardGroup
//    }
//    
//    private var cardGroup: some View {
//        VStack {
//            circleInfo.circleImage
//                .resizable()
//                .frame(width: 130, height: 130)
//                .padding(.bottom, 10)
//            Text(circleInfo.circleName)
//                .font(.PretendardSemiBold14)
//                .foregroundColor(.black)
//        }
//    }
//}
//
//#Preview {
////    CircleImageCard(circleInfo: RecommendMenuModel(circleImage: Image("rcmMenu1"), circleName: "에스프레소 콘파나"), menuDetailViewModel: nil)
//    CircleImageCard(circleInfo: RecommendMenuModel(circleImage: Image("rcmMenu1"), circleName: "에스프레소 콘파나"))
//}
