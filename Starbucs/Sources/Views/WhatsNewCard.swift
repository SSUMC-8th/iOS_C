//
//  WhatsNewCardView.swift
//  Starbucs
//
//  Created by chohaeun on 4/3/25.
//

import SwiftUI

struct WhatsNewCard: View {
    
    let whatsNewinfo: WhatsNewModel
      
    var body: some View {
        VStack(alignment: .leading) {
            
            whatsNewinfo.image
                .aspectRatio(contentMode: .fill)
                .frame(width: 242, height: 160)
                .clipped()
            
            Spacer().frame(height: 16)
            
            Text("\(whatsNewinfo.title)")
                .font(Font.PretendardSemiBold18)
                .frame(width: 235, height: 28, alignment: .topLeading)
            
            Spacer().frame(height: 9)
            
            Text("\(whatsNewinfo.content)")
                .font(Font.PretendardSemiBold16)
                .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                .frame(width: 235, height: 36, alignment: .topLeading)
        }
        .frame(width: 240, height: 249, alignment: .center)
    }
}

#Preview {
    WhatsNewCard(whatsNewinfo: .init(image: .init(.mug), title: "새 메뉴 추가", content: "오늘의 메뉴는 새 메뉴 '라볶이'입니다."))
}
