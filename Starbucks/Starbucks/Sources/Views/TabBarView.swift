//
//  TabBarView.swift
//  Starbucks
//
//  Created by 김나영 on 3/27/25.
//

import SwiftUI

struct TabBarView: View {
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Tab(value: 0) {
                HomeView()

            } label: {
                Label {
                    Text("Home")
                } icon: {
                    Image(selection == 0 ? "selectedHome" : "unselectedHome")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100) // 크기 조정이.. 안돼욧....ㅠㅠㅠ
                }
            }
            
            Tab(value: 1) {
//                PayView()
            } label: {
                Label {
                    Text("Pay")
                } icon: {
                    Image(selection == 1 ? "selectedPay" : "unselectedPay")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            
            Tab(value: 2) {
//                OrderView()
            } label: {
                Label {
                    Text("Order")
                } icon: {
                    Image(selection == 2 ? "selectedOrder" : "unselectedOrder")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            
            Tab(value: 3) {
//                ShopView()
            } label: {
                Label {
                    Text("Shop")
                } icon: {
                    Image(selection == 3 ? "selectedShop" : "unselectedShop")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            
            Tab(value: 4) {
                OtherView()
            } label: {
                Label {
                    Text("Other")
                } icon: {
                    Image(selection == 4 ? "selectedOther" : "unselectedOther")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            
//            Tab("Home", image: selected == 0 ? "selectedHome" : "unselectedHome", value: 0) {
//           //              HomeView()
//                       }
//                       
//            Tab("Pay", image: selected == 1 ? "selectedPay" : "unselectedPay", value: 1) {
//           //              PayView()
//                       }
//                       
//           Tab("Order", image: selected == 2 ? "selectedOrder" : "unselectedOrder", value: 2) {
//           //              OrderView()
//                       }
//                       
//           Tab("Shop", image: selected == 3 ? "selectedShop" : "unselectedShop", value: 3) {
//           //              ShopView()
//                       }
//                       
//           Tab("Other", image: selected == 4 ? "selectedOther" : "unselectedOther", value: 4) {
//                           OtherView()
//                       }
        }
        .tint(Color("mainGreenColor"))
        .background(Color(.white))

    }
}

#Preview {
    TabBarView()
}
