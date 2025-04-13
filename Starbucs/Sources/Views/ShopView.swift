//
//  ShopView.swift
//  Starbucs
//
//  Created by chohaeun on 4/13/25.
//
import SwiftUI

struct ShopView: View {
    
    @State private var productsViewModel = ProductsViewModel()
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20){
                
                Top
                Spacer()
                AllProD
                Spacer()
                BestItem
                Spacer()
                NewItem

            }.padding(.horizontal, 10)
          
        }.frame(maxWidth: .infinity)
        .scrollIndicators(.visible, axes: .vertical)
        
        //resizable을 써보자
    }
    
    private var Top: some View {
        
        let rows = Array(repeating: GridItem(), count: 1)
        
        return VStack(alignment: .leading) {
            
            Text("StarBucks Online Shop")
                .font(Font.PretendardBold24)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 28) {
                    
                    ForEach(0...5, id: \.self) { index in
                        
                        
                        Image(.popup)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 270, height: 216)

                        
                    }
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
    
    
    private var AllProD: some View {
        
        let rows = Array(repeating: GridItem(), count: 1)
        
        return VStack(alignment: .leading) {
            
            Text("All Products")
                .font(Font.PretendardSemiBold22)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 17) {
                    
                    ForEach(0...5, id: \.self) { index in
                        ProductCard(productsinfo: productsViewModel.ProductsArr[index])
                    }
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
    
    private var BestItem: some View {
        
        let rows = Array(repeating: GridItem(.flexible()), count: 2)
        
        return VStack(alignment: .leading) {
            
            Text("Best item")
                .font(Font.PretendardSemiBold22)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 65) {
                        
                    ForEach(0...7, id: \.self) { index in
                                Image(.popup)
                                    .resizable()
                                    .frame(width: 157, height: 208)
                                    .aspectRatio(contentMode: .fill)
                            }
    
                    // 뷰 모델에 넣고 꺼내와야할듯 스크롤 말고 4개 전체 다 바뀌게 어케 하지
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
    
    private var NewItem: some View {
        
        let rows = Array(repeating: GridItem(.flexible()), count: 2)
        
        return VStack(alignment: .leading) {
            
            Text("New item")
                .font(Font.PretendardSemiBold22)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 65) {
                        
                    ForEach(0...7, id: \.self) { index in
                        Image(.bluebanner)
                                    .resizable()
                                    .frame(width: 157, height: 208)
                                    .aspectRatio(contentMode: .fill)
                            }
    
                    // 뷰 모델에 넣고 꺼내와야할듯 스크롤 말고 4개 전체 다 바뀌게 어케 하지
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
}



#Preview {
    ShopView()
}
