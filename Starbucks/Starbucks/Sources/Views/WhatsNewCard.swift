//
//  WhatsNewCard.swift
//  Starbucks
//
//  Created by 김나영 on 4/2/25.
//

import SwiftUI

struct WhatsNewCard: View {
    let whatsNewInfo: WhatsNewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            whatsNewInfo.whatsNewImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 242)
                .padding(.bottom, 16)
            Text(whatsNewInfo.whatsNewName)
                .font(.PretendardSemiBold18)
                .frame(maxWidth: 242, alignment: .leading)
                .lineLimit(1)
                .padding(.bottom, 9)
            Text(whatsNewInfo.whatsNewText)
                .font(.PretendardSemiBold13)
                .foregroundColor(Color("fontLightgrayColor"))
                .frame(width: 242, alignment: .leading)
                .lineLimit(2)
        }

    }
}

#Preview {
    WhatsNewCard(whatsNewInfo: WhatsNewModel(whatsNewImage: Image("whatsNew1"), whatsNewName: "25년 3월 일회용컵 없는 날 캠페...", whatsNewText: "ddd"))
}
