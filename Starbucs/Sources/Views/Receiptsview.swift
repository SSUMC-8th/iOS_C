//
//  Receipt.swift
//  Starbucs
//
//  Created by chohaeun on 4/30/25.
//
import SwiftUI
import Foundation

struct ReceiptsView: View {
    var body: some View {
        
        HStack(alignment: .center) {
            Text("총 1건")
            .font(Font.PretendardMedium18)
            .foregroundColor(.black)
            
            Spacer()
            
            Text("사용합계 6,500")
            .font(Font.PretendardMedium18)
            .foregroundColor(.black)
        }
        .padding(0)
        .frame(width: 404, alignment: .center)
        
        Spacer().frame(height: 24)
        
        HStack(alignment: .center) {
            
            VStack(alignment: .leading){
                Text("사당역")
                .font(Font.PretendardMedium18)
                .foregroundColor(.black)
                
                Text("2025.01.05 11:30")
                .font(Font.PretendardMedium18)
                .foregroundColor(.black)
                
                Text("6500원")
                .font(Font.PretendardMedium18)
                .foregroundColor(.black)
            }
            
            Spacer()
            
            Image("영수증 표시")
            .frame(width: 16, height: 20)
            .overlay(
            Rectangle()
            .stroke(Color(red: 0, green: 0.66, blue: 0.38), lineWidth: 2))
    
        }
        .padding(0)
        .frame(width: 402, alignment: .center)
        
        Spacer()
        
        Button(action: {
            print("일단 해")
        }) {
            
            Text("추가하기")
                .font(Font.PretendardMedium16)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 46)
                .background(Color("green01"))
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
        }
        
        Spacer()
        
    }
}

#Preview{
    ReceiptsView()
}
