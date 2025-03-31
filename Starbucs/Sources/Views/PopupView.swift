//
//
//  Starbucs
//
//  Created by chohaeun on 4/1/25.
//
import SwiftUI
import Foundation

struct PopupView: View {
    var body: some View{
        VStack(alignment: .center){
            
            Image(.popup)
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
            
            
            Spacer()
            
            Button(action: {
                print("자세히 보기")
            }) {
                
                Text("자세히 보기")
                    .font(Font.PretendardMedium18)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 58)
                    .background(Color("green01"))
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }.padding(EdgeInsets(top: 0, leading: 19, bottom: 0, trailing: 19))
            
            
            Spacer().frame(height: 19)
            
            Button(action: {
                print("닫기 클릭")
            }) {
                
                Text("X 닫기")
                    .font(Font.PretendardLight14)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                //오른쪽 정렬 어케 함? trailing
            }.padding(EdgeInsets(top: 0, leading: 19, bottom: 0, trailing: 19))
            
            
        }.background(.white)
    
    }
}

#Preview{
    PopupView()
}
