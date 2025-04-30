//
//  OtherReceiptView.swift
//  Starbucks
//
//  Created by 김나영 on 4/8/25.
//

import SwiftUI

struct OtherReceiptView: View {
    @Environment(\.dismiss) var dismiss
    @Bindable var otherReciepViewModel: OtherRecieptViewModel = .init()
    @State private var selectedReceiptImageName: String? = nil
    @State private var showReceiptImage = false

    
    var body: some View {
        Group {
            totalInfoGroup
            recieptInfoGroup
            Spacer()
        }
        .padding(.horizontal, 19)
    }
    
    private var totalInfoGroup: some View {
        VStack {
            HStack {
                Text("총")
                Text("x건")
                    .font(.PretendardRegular18)
                    .foregroundStyle(Color("homeRewardColor"))
                Spacer()
                Text("사용합계")
                    .font(.PretendardRegular18)
                Text("yyy")
                    .font(.PretendardRegular18)
                    .foregroundStyle(Color("homeRewardColor"))
            }
            .padding(.top, 38)
            .padding(.bottom, 24)
        }
        .navigationTitle(Text("전자 영수증"))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    private var recieptInfoGroup: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("어디 스벅")
                    .font(.PretendardRegular18)
                HStack {
                    Text("날짜")
                        .font(.PretendardLight16)
                        .foregroundStyle(Color("fontLightgrayColor"))
                    Spacer()
                    Button(action: {
                        showReceiptImage = true
                        selectedReceiptImageName = "receipt1"
                    }) {
                        Image("otherReceiptButton")
                    }
                }
                Text("가격")
                    .font(.PretendardSemiBold18)
                    .foregroundStyle(Color("homeRewardColor"))
            }
            
            if showReceiptImage {
                Color.black.opacity(0.6)
                
                VStack {
                    Image("receipt1")
                        .padding()
                        .onTapGesture {
                            showReceiptImage = false
                        }
                }
            }
        }
    }
}

#Preview {
    OtherReceiptView()
}
