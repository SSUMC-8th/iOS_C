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
            if let menuDetailViewModel, let menuDetail = menuDetailViewModel.getMenuDetail(for: circleInfo.circleName) {
                NavigationLink(destination: MenuDetailCard(menuDetail: menuDetail)) {
                    cardGroup
                }
            } else {
                cardGroup
            }
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
        }
    }

    #Preview {
        CircleImageCard(circleInfo: RecommendMenuModel(circleImage: Image("rcmMenu1"), circleName: "에스프레소 콘파나"), menuDetailViewModel: nil)
    }
