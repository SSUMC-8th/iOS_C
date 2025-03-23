//
//  SplashView.swift
//  Starbucks
//
//  Created by 김나영 on 3/19/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color("mainGreenColor")
                .edgesIgnoringSafeArea(.all)
            Image("logo")
                .resizable()
                .frame(width: 168, height: 168, alignment: .center)
        }
        .frame(alignment: .center)
    }
}

#Preview {
    SplashView()
}
