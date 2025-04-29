//
//  MenuDetail..swift
//  Starbucs
//
//  Created by chohaeun on 4/30/25.
//

import SwiftUI
import Foundation

struct MenuDetailView: View {
    
    @State private var path = NavigationPath()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Rectangle()
        .foregroundColor(.clear)
        .frame(width: 440, height: 355)
        .background(
        Image(.americanoHot)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 440, height: 355)
        .clipped()
        )
        
        Spacer().frame(height: 20)
        
        info
        
        Spacer()
        
        VStack {
            Button("Go Back") {
                dismiss() // 현재 화면을 닫고 이전 화면으로 돌아감
            }}.navigationTitle("Detail")
    }
    
    private var info: some View {
        
        VStack(alignment: .leading){
            
            // mainText/mainTextSemibold24
            Text("아이스 카라멜 마끼아또")
                .font(Font.PretendardSemiBold24)
                .foregroundColor(Color(.black))

            Text("Iced Caramel Macchiato")
                .font(Font.PretendardLight14)
                .foregroundColor(Color(.gray))
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text("향긋한 바닐라 시럽과 시원한 우유에 어름을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료")
                    .font(Font.PretendardLight14)
                    .foregroundColor(Color(.gray))
                
                Text("6100원")
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
    }
}


#Preview {
    MenuDetailView()
}
