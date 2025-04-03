//
//  TapView.swift
//  Starbucs
//
//  Created by chohaeun on 4/1/25.
//

import SwiftUI
import Foundation

struct TapView: View {
    
    @State var selection: Int = 0 // 현재 선택된 탭 추적
    
    var body: some View {
       
            
            TabView(selection: $selection) {
                
                Tab(value: 0){
                    HomeView()
                } label:{
                    Label{
                        Text("Home")
                    } icon: {
                        Image(selection == 0 ? "homeG" : "home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                }
                
                Tab(value: 1){
                    //HomeView()
                } label:{
                    Label{
                        Text("Pay")
                    } icon: {
                        Image(selection == 1 ? "payG" : "pay")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                }
                
                
                Tab(value: 2){
                    //HomeView()
                } label:{
                    Label{
                        Text("Order")
                    } icon: {
                        Image(selection == 2 ? "orderG" : "order")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                }
                
                Tab(value: 3){
                    //HomeView()
                } label:{
                    Label{
                        Text("Shop")
                    } icon: {
                        Image(selection == 3 ? "shopG" : "shop")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                }
                
                Tab(value: 4){
                    OtherView()
                } label:{
                    Label{
                        Text("Other")
                    } icon: {
                        Image(selection == 4 ? "otherG" : "other")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            }.tint(Color("green02"))
            .background(Color(.white))
        }
    }


#Preview {
    TapView()
}
