//
//  SelectShopSheetView.swift
//  Starbucks
//
//  Created by 김나영 on 5/1/25.
//

import SwiftUI

struct SelectStoreSheetView: View {
    @StateObject private var selectStoreSheetViewModel = SelectStoreSheetViewModel()
    @State private var isMapVisible = false
    @State private var inputStoreLocation: String = ""
    
    var body: some View {
        topGroup
        Spacer()
    }
    
    @ViewBuilder
    private var selectedStoreView: some View {
        switch selectStoreSheetViewModel.selectedMenu {
        case .nearStore:
            StoreListView()
        case .frequentStore:
            Text("자주 가는 매장")
        }
    }
    
    private var topGroup: some View {
        VStack {
            
            HStack {
                Spacer()
                Text("매장 설정")
                    .font(.PretendardBold16)
                Spacer()
                Button(action: { isMapVisible.toggle() }) {
                    Image("mapButton")
                }
            }
            .padding(.vertical, 24)
            .padding(.horizontal, 24)
            
            TextField("   검색", text: $inputStoreLocation)
                .padding(.vertical, 12)
                .background(Color(uiColor: .secondarySystemBackground))
                .padding(.horizontal, 24)
            
            HStack {
                ForEach(SelectStoreSheetModel.allCases) { menu in
                    Button(action: {
                        selectStoreSheetViewModel.selectedMenu = menu
                    }) {
                        Text(menu.rawValue)
                            .font(.PretendardSemiBold13)
                            .foregroundColor(selectStoreSheetViewModel.selectedMenu == menu ? .black : Color("fontLightgrayColor"))
                            .padding(.top, 6)
                            .padding(.horizontal, 12)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 24)
            Divider()
            
            if isMapVisible {
                MapView()
//                    .padding(.bottom, 12)
//                    .transition(.slide)
            }
            
            else {
                selectedStoreView
            }
        }
    }
}

#Preview {
    SelectStoreSheetView()
}
