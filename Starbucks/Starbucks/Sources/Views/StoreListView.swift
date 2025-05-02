//
//  StoreListView.swift
//  Starbucks
//
//  Created by 김나영 on 5/1/25.
//

import SwiftUI
import CoreLocation

struct StoreListView: View {
    @StateObject private var storeLocationViewModel = StoreLocationViewModel()
    
    var body: some View {
        List(storeLocationViewModel.stores) { store in
            HStack {
                Image("storeThumbnail")
                VStack(alignment: .leading) {
                    Text(store.properties.Sotre_nm)
                        .font(.PretendardSemiBold13)
                        .padding(.bottom, 4)
                    Text(store.properties.Address)
                        .font(.PretendardLight12)
                        .foregroundColor(.gray)
                    Spacer()
                    HStack {
                        if(store.properties.Category == "리저브 매장" && store.properties.Category == "DT 매장") {
                            Image("storeReserve")
                            Image("storeDT")
                        }
                        else if(store.properties.Category == "리저브 매장") {
                            Image("storeReserve")
                        }
                        else if(store.properties.Category == "DT 매장") {
                            Image("storeDT")
                        }
                        else {
                            
                        }
                        Spacer()
                        Text("1km")
                    }
                }
                .padding()
            }
        }
        .scrollContentBackground(.hidden) // 기본 배경 숨기기
        .background(Color.clear) // 투명 배경 설정
        .onAppear {
//            storeLocationViewModel.currentLocation = locationManager.currentLocation
            storeLocationViewModel.currentLocation = CLLocation(latitude: 37.504675, longitude: 126.957034)

            storeLocationViewModel.loadGeoJSON()
        }

    }
}

#Preview {
    StoreListView()
}
