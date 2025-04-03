//
//  MenuDetailCard.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import SwiftUI

struct MenuDetailCard: View {
    let menuDetail: MenuDetailModel
    
    @State private var selectedOption: MenuDetailModel.MenuOptions
        
    init(menuDetail: MenuDetailModel) {
        self.menuDetail = menuDetail
        _selectedOption = State(initialValue: menuDetail.menuOption)
    }
        
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                menuDetail.menuImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                Image("popButton")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(y: -130)
                    .offset(x: -170)
                Image("shareButton")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(y: -130)
                    .offset(x: 170)
            }

            Text(menuDetail.menuKoreanName)
                .font(.PretendardSemiBold24)
                .padding(.horizontal, 10)
            
            Text(menuDetail.menuEnglishName)
                .font(.PretendardSemiBold14)
                .foregroundColor(Color("fontLightgrayColor"))
                .padding(.bottom, 30)
                .padding(.horizontal, 10)

            Text(menuDetail.menuText)
                .font(.PretendardSemiBold14)
                .padding(.bottom, 30)
                .padding(.horizontal, 10)

            Text(menuDetail.menuPrice)
                .font(.PretendardRegular24)
                .padding(.bottom, 30)
                .padding(.horizontal, 10)
            
            if menuDetail.menuOption == .hotOnly {
                Text("HOT ONLY")
                    .font(.PretendardSemiBold14)
                    .foregroundStyle(Color(.red))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.vertical, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("fontLightgrayColor"), lineWidth: 1)
                    )
                    .padding(.horizontal, 10)
            }
            else if menuDetail.menuOption == .iceOnly {
                Text("ICE ONLY")
                    .font(.PretendardSemiBold14)
                    .foregroundStyle(Color(.blue))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.vertical, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("fontLightgrayColor"), lineWidth: 1)
                    )
                    .padding(.horizontal, 10)
            }
            else {
                Picker("온도 선택", selection: $selectedOption) {
                    Text("HOT")
                        .tag(MenuDetailModel.MenuOptions.hotOnly)
                        .foregroundStyle(selectedOption == .hotOnly ? .red : .gray)
                    
                    Text("ICED")
                        .tag(MenuDetailModel.MenuOptions.iceOnly)
                        .foregroundStyle(selectedOption == .iceOnly ? .blue : .gray)
                    //왜 색 안바뀌냐~~~~~~~
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 10)
                .cornerRadius(999)
            }
            
            Spacer()
            
            Button(action: {print("주문하기")}) {
                Text("주문하기")
                    .font(.PretendardSemiBold16)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
            .background(Color("mainGreenColor"))
            .cornerRadius(20)
            .padding(.horizontal, 28)
        }
        
    }
}

#Preview {
    MenuDetailCard(menuDetail: MenuDetailModel(
        menuImage: Image("rcmMenuDetail1"),
        menuKoreanName: "에스프레소 콘파나",
        menuEnglishName: "Espresso Con Panna",
        menuText: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
        menuPrice: "4,100원",
//        menuOption: .hotOnly))
        menuOption: .bothAvailable))
}
