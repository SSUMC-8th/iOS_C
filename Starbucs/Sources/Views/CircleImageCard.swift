//
//  CircleImageCard.swift
//  Starbucs
//
//  Created by chohaeun on 4/2/25.
//

import SwiftUI

struct CircleImageCard: View {
    
    let dessertsinfo: DessertsModel
    //let specialtyinfo: SpecialtyMenuModel
      
    var body: some View {
        VStack(spacing: 5) {
            
            dessertsinfo.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .clipped() //얜 뭐냐
                .cornerRadius(130)
            
            Spacer().frame(height: 10)
            
            Text("\(dessertsinfo.menuName)")
                .font(Font.PretendardSemiBold16)
                .frame(width: 130, height: 20, alignment: .center)
          
        }
        .frame(width: 130, height: 160)
    }
}

#Preview {

}


