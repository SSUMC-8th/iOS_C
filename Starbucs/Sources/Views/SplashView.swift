//
//  SplashView.swift
//  Starbucs
//
//  Created by chohaeun on 3/21/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View{
        ZStack(alignment: .center){
        
                    Image(.starbucsLogo)
                        .resizable()
                        .frame(width: 168, height: 168)
                        .aspectRatio(contentMode: .fit)
    
        }
        .frame(maxWidth:.infinity, maxHeight:.infinity)
        .background(Color("green01"))
        //.foregroundStyle(Color("green01")) 얘는 프레임 그 자체의 색깔 바꾸기 느낌이라 적합 XX
    }
}

#Preview {
    SplashView()
}
