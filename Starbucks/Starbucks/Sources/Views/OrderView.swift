//
//  OrderView.swift
//  Starbucks
//
//  Created by 김나영 on 4/30/25.
//

import SwiftUI

struct OrderView: View {
    @StateObject private var orderViewModel = OrderViewModel()
    
    var body: some View {
        topSegmentGroup
    }
    
    private var topSegmentGroup: some View {
        VStack {
            Text("Order")
                .font(.PretendardBold24)
                .padding(.trailing, 354)
                .padding(.bottom, 19)

            HStack {
                ForEach(OrderModel.allCases) { menu in
                    VStack {
                        Button(action: {
                            withAnimation {
                                orderViewModel.selectedMenu = menu
                            }
                        }) {
                            Text(menu.rawValue)
                                .font(.PretendardBold16)
                                .foregroundColor(orderViewModel.selectedMenu == menu ? .black : Color("fontLightgrayColor"))
                                .padding(.vertical, 8)
                                .padding(.horizontal, 12)
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(orderViewModel.selectedMenu == menu ? .green : .clear)
                                .frame(height: 3)
                            Divider()
                                .background(Color.gray.opacity(0.3))
                        }
                    }
                }
            }
//            Divider()
//                .background(Color.gray.opacity(0.3))
            
            
            
            selectedView
            Spacer()
        }
    }
    
    @ViewBuilder
        private var selectedView: some View {
            switch orderViewModel.selectedMenu {
            case .entireMenu:
                Text("전체 메뉴 화면")
            case .myOwnMenu:
                Text("나만의 메뉴 화면")
            case .cakeReserve:
                Text("홀케이크 예약 화면")
            }
        }
}

#Preview {
    OrderView()
}
