//
//  StoreListView.swift
//  Starbucs
//
//  Created by chohaeun on 5/1/25.
//


import SwiftUI
import Foundation

struct StoreListView: View {
    
    @StateObject private var viewModel = StoreViewModel()
    
    var body : some View{
        
        VStack(alignment: .leading) {
            
            Button(action: {
                print("검색해라")
            }){
                
                Text("검색")
                    .font(Font.PretendardSemiBold13)
                    .foregroundColor(.black)
                    .frame(width: 375, height: 27, alignment: .leading)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(5)
                
            }
            
            Spacer().frame(height: 22)
            
            HStack(alignment: .center, spacing: 10) {
                
                Text("가까운 매장")
                    .font(Font.PretendardSemiBold13)
                
                Image("Vector")
                    .frame(width: 1, height: 12)
                    .background(Color(red: 0.67, green: 0.67, blue: 0.67))
                
                Text("자주 가는 매장")
                    .font(Font.PretendardSemiBold13)
                
            }
            
            Spacer().frame(height: 17)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 1)
                .background(Color(red: 0.9, green: 0.9, blue: 0.9))
            
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(viewModel.storeList) { store in
                        StoreCardView(store: store)
                    }
                }
                
            }
            .frame(width: 375, alignment: .topLeading)
        }
    }
    
    
        private func StoreCardView(store: StoreModel) -> some View {
                HStack(alignment: .center, spacing: 16) {
                    
                    Image(.caramerlCold)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 83, height: 83)
                        .clipped()
                        .cornerRadius(6)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Text(store.name)
                            .font(Font.PretendardSemiBold13)
                        
                        Text(store.locate)
                            .font(Font.PretendardSemiBold13)
                    }
                    .padding(.vertical, 6)
                    .frame(width: 276, alignment: .topLeading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
 
}

#Preview {
    StoreListView()
}

