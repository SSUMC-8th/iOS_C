//
//  PopUpAdView.swift
//  Starbucks
//
//  Created by 김나영 on 3/27/25.
//

import SwiftUI

struct PopUpAdView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image("popUpAd")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .padding(.top, 0)
//                .padding(.bottom, 106)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
            
            Group {
                Button(action: {print("자세히 보기")}) {
                    Text("자세히 보기")
                        .font(.PretendardMedium18)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(EdgeInsets(top: 19, leading: 0, bottom: 19, trailing: 0))
                .background(Color("mainGreenColor"))
                .cornerRadius(20)
                
                Button(action: {dismiss()}) {
                    Text("X 닫기")
                        .font(.PretendardLight14)
                        .foregroundColor(Color("fontLightgrayColor"))
                }
                .padding(.top, 19)
                .padding(.leading, 320)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    PopUpAdView()
}
