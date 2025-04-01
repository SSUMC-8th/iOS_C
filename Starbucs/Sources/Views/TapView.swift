//
//  TapView.swift
//  Starbucs
//
//  Created by chohaeun on 4/1/25.
//

import SwiftUI
import Foundation

struct TapView: View {
    
    @State private var selectedTab = 0  // 현재 선택된 탭 추적
    
    var body: some View {
        
        Spacer()
    
        
        HStack(alignment: .center, spacing: 44) {
            
            
            TabView(selection: $selectedTab) {
                
                OtherView() // HomeView()
                    .tabItem {
                        Label("Home", image: selectedTab == 0 ? "homeG" : "home")
                    }
                    .tag(0)
                
                OtherView() //
                    .tabItem {
                        Label("Pay", image: selectedTab == 1 ? "payG" : "pay")
                    }
                    .tag(1)
                
                OtherView()
                    .tabItem {
                        Label("Order", image: selectedTab == 2 ? "orderG" : "order")
                    }
                    .tag(2)
                
                OtherView()
                    .tabItem {
                        Label("Shop", image: selectedTab == 3 ? "shopG" : "shop")
                    }
                    .tag(3)
                
                OtherView()
                    .tabItem {
                        Label("Other", image: selectedTab == 4 ? "otherG" : "other")
                    }
                    .tag(4)
                
            }.tint(Color("green02"))
            .padding(.horizontal, 44)
        }
        .padding(.horizontal, 0)
        .padding(.vertical, 10)
        .frame(width: 440, height: 83, alignment: .center)
        .background(.clear)
    }
}

#Preview {
    TapView()
}
