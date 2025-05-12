//
//  TabBarView.swift
//  Starbucks
//
//  Created by 김나영 on 3/27/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Tab("Home", image: selection == 0 ? "selectedHome" : "unselectedHome", value: 0) {
                HomeView()
            }
            
            Tab("Pay", image: selection == 1 ? "selectedPay" : "unselectedPay", value: 1) {
//                PayView()
            }
            
            Tab("Order", image: selection == 2 ? "selectedOrder" : "unselectedOrder", value: 2) {
                OrderView()
            }
            
            Tab("Shop", image: selection == 3 ? "selectedShop" : "unselectedShop", value: 3) {
                ShopView()
            }
            
            Tab("Other", image: selection == 4 ? "selectedOther" : "unselectedOther", value: 4) {
                OtherView()
            }
        }
        .tint(Color("mainGreenColor"))
        .background(Color(.white))

    }
}

#Preview {
    TabBarView()
}
