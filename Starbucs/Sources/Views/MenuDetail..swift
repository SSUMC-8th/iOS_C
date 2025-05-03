//
//  MenuDetail..swift
//  Starbucs
//
//  Created by chohaeun on 4/30/25.
//

import SwiftUI
import Foundation

struct MenuDetailView: View {
    
    let Menuinfo: MenuModel
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 440, height: 355)
            .background(
                Menuinfo.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 440, height: 355)
                    .clipped()
            )
        
        Spacer().frame(height: 20)
        
        VStack(alignment: .leading){
            
            // mainText/mainTextSemibold24
            Text("\(Menuinfo.menuName)")
                .font(Font.PretendardSemiBold24)
                .foregroundColor(Color(.black))
            
            //Text("\(Menuinfo.menuEng)")
            Text("Eng")
                .font(Font.PretendardLight14)
                .foregroundColor(Color(.gray))
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                
                //Text("\(Menuinfo.decription)")
                Text("descrip")
                    .font(Font.PretendardLight14)
                    .foregroundColor(Color(.gray))
                
                //Text("\(Menuinfo.price)")
                Text("price")
                    .font(Font.PretendardSemiBold24)
                    .foregroundColor(Color(.black))
            }
            
            Spacer()
            
            HStack(alignment: .center) {
                Text("HOT")
                    .font(Font.PretendardSemiBold24)
                    .foregroundColor(Color(.black))
            }
            .frame(width: 420, height: 36, alignment: .center)
            .background(Color.gray)
            .cornerRadius(999)
            
            Spacer()
            
        }.frame(maxWidth: .infinity, minHeight: 256, maxHeight: 256, alignment: .leading)
        //.background(Color.yellow)
        
        Spacer()
    }
}
