//
//  OrderView.swift
//  Starbucks
//
//  Created by 김나영 on 4/30/25.
//

import SwiftUI

struct OrderView: View {
    @StateObject private var orderViewModel = OrderViewModel()
    @State private var menuDetailViewModel = MenuDetailViewModel()
    @State private var recommendMenuViewModel = RecommendMenuViewModel()
    
    @State private var isSelectShopSheetPresented = false
    
    var body: some View {
        VStack {
            topSegment
            Spacer()
            bottomSegment
        }
        .sheet(isPresented: $isSelectShopSheetPresented) {
            SelectStoreSheetView()
        }
    }
    
    @ViewBuilder
    private var selectedOrderView: some View {
        switch orderViewModel.selectedMenu {
        case .entireMenu:
            entireMenuGroup
        case .myOwnMenu:
            Text("나만의 메뉴 화면")
        case .cakeReserve:
            Text("홀케이크 예약 화면")
        }
    }
    
    @ViewBuilder
    private var selectedEntireMenuView: some View {
        switch orderViewModel.selectedSubEntireMenu {
        case .drink:
            ScrollView(.vertical, content: {
                LazyVStack(spacing: 15, content: {
                    ForEach(recommendMenuViewModel.menuDetails, id: \.circleName) { item in
                        CircleImageCard(circleInfo: item, menuDetailViewModel: menuDetailViewModel, layoutStyle: .horizontal)
                    }
                })
            })
            .padding(.leading, 20)
            .padding(.bottom, 20)

        case .food:
            Text("푸드")

        case .goods:
            Text("상품")
        }
    }

    
    private var entireMenuGroup: some View {
        VStack {
            entireMenuTopSegment
        }
    }
    
    private var myOwnMenuGroup: some View {
        VStack {
            
        }
    }
    
    private var cakeReserveGroup: some View {
        VStack {
            
        }
    }
    
    private var topSegment: some View {
        VStack {
            Text("Order")
                .font(.PretendardBold24)
                .padding(.trailing, 354)
                .padding(.bottom, 19)

            HStack {
                ForEach(OrderModel.allCases) { menu in
                    VStack {
                        Button(action: {
                            orderViewModel.selectedMenu = menu
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
                                .shadow(color: .black, radius: 1.5, x: 0, y: 1)
                        }
                    }
                }
            }
            
            selectedOrderView
            Spacer()
        }
    }
    
    private var bottomSegment: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .frame(height: 60)
            VStack {
                Button(action: {
                    isSelectShopSheetPresented = true
                }) {
                    HStack {
                        Text("주문할 매장을 선택해 주세요")
                            .foregroundStyle(Color.white)
                        Spacer()
                        Image("underButton")
                    }
                    .padding(.horizontal, 20)
                }
                Divider()
                    .background(Color.white)
                    .padding(.horizontal, 20)
            }
            .padding(.vertical, 10)
        }
    }
    
    private var entireMenuTopSegment: some View {
        VStack {
            HStack {
                ForEach(SubEntireMenuModel.allCases) { submenu in
                    Button(action: {
                        orderViewModel.selectedSubEntireMenu = submenu
                    }) {
                        HStack(spacing: 4) {
                            Text(submenu.rawValue)
                            Image("new")
                        }
                        .foregroundColor(orderViewModel.selectedSubEntireMenu == submenu ? .black : Color("fontLightgrayColor"))
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                    }
                }
            }
            .padding(.trailing, 180)
            
            Divider()
                .frame(height: 10)
            
            selectedEntireMenuView
        }
    }
    
}

#Preview {
    OrderView()
}
