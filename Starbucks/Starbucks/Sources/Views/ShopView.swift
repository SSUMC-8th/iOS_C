//
//  ShopView.swift
//  Starbucks
//
//  Created by 김나영 on 4/8/25.
//

import SwiftUI

struct ShopView: View {
    @State private var shopViewModel = ShopViewModel()
    var body: some View {
        ScrollView {
            topBannerGroup
            allProductsGroup
            bestItemsGroup
            newProductsGroup
        }
    }
    
    private var topBannerGroup: some View {
        VStack(alignment: .leading) {
            Text("Starbucks Online Store")
                .font(.PretendardBold24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.vertical, 16)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 28) {
                    ForEach(shopViewModel.bannerImages, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 270)
                    }
                }
            }
            .padding(.leading, 19)
        }
    }
    
    private var allProductsGroup: some View {
        VStack(alignment: .leading) {
            Text("All Products")
                .font(.PretendardSemiBold22)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.vertical, 16)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 17) {
                    ForEach(shopViewModel.allProductsData, id: \.imageName) { item in
                        VStack {
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80)
                            
                            Text(item.title)
                                .font(.PretendardSemiBold13)
                        }
                    }
                }
            }
            .padding(.leading, 17)
        }
    }
    
    private var bestItemsGroup: some View {
        VStack(alignment: .leading) {
            Text("Best Items")
                .font(.PretendardSemiBold22)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.vertical, 16)
        }
    }
    
    private var newProductsGroup: some View {
        VStack(alignment: .leading) {
            Text("New Products")
                .font(.PretendardSemiBold22)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                .padding(.vertical, 16)
            LazyVGrid(columns: [
                GridItem(.flexible(), spacing: 16),
                GridItem(.flexible(), spacing: 16)
            ], spacing: 16) {
                ForEach(shopViewModel.newProductsData, id: \.imageName) { item in
                    VStack {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 157)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                        Text(item.title)
                            .font(.PretendardSemiBold14)
                    }
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ShopView()
}
