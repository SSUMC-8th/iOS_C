//
//  CircleImageCard.swift
//  Starbucs
//
//  Created by chohaeun on 4/2/25.
//

import SwiftUI

struct CircleImageCard: View {
    
    let Menuinfo: MenuModel
      
    var body: some View {
        VStack(spacing: 5) {
            
            Menuinfo.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 130)
                .clipped() //얜 뭐냐
                .cornerRadius(130)
            
            Text("\(Menuinfo.menuName)")
                .font(Font.PretendardSemiBold16)
                .frame(width: 130, height: 20, alignment: .center)
          
        }
        .frame(width: 130, height: 160)
     
    }
}

#Preview {
    CircleImageCard(Menuinfo: MenuModel( image: Image(.americanoHot),menuName: "아메리카노"))
}


