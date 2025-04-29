//
//  ProductCard.swift
//  Starbucs
//
//  Created by chohaeun on 4/13/25.
//

//
//  CircleImageCard.swift
//  Starbucs
//
//  Created by chohaeun on 4/2/25.
//

import SwiftUI

struct ProductCard: View {

    let productsinfo: ProductsModel
      
    var body: some View {
        VStack(spacing: 5) {
            
            productsinfo.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped() //얜 뭐냐
                .cornerRadius(130)
            
            Spacer().frame(height: 10)
            
            Text("\(productsinfo.productName)")
                .font(Font.PretendardSemiBold13)
                .frame(width: 80, height: 18, alignment: .center)
          
        }
        .frame(width: 80, height: 108)
    }
}





