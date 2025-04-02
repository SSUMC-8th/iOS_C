//
//  MenuDetailCard.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import SwiftUI

struct MenuDetailCard: View {
    let menuDetail: MenuDetailModel
        
        var body: some View {
            VStack(alignment: .leading) {
                menuDetail.menuImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .padding(.bottom, 16)

                Text(menuDetail.menuKoreanName)
                    .font(.PretendardSemiBold24)
                
                Text(menuDetail.menuEnglishName)
//                    .font(.PretendardRegular16)
                    .foregroundColor(.gray)
                    .padding(.bottom, 8)

                Text(menuDetail.menuText)
//                    .font(.PretendardRegular14)
                    .foregroundColor(Color("fontLightgrayColor"))
                    .padding(.bottom, 8)

                Text("가격: \(menuDetail.menuPrice)")
                    .font(.PretendardSemiBold18)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding()
        }
}

#Preview {
    MenuDetailCard(menuDetail: MenuDetailModel(
        menuImage: Image("rcmMenu1"),
        menuKoreanName: "에스프레소 콘파나",
        menuEnglishName: "Espresso Con Panna",
        menuText: "진한 에스프레소 위에 부드러운 휘핑크림을 얹은 메뉴",
        menuPrice: "₩4,500",
        menuOption: .hotOnly
    ))
}
