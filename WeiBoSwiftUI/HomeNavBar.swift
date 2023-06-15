//
//  HomeNavBar.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/15.
//

import SwiftUI

private let kLableWidth:CGFloat = 60
private let kButtonHeight: CGFloat = 24


struct HomeNavBar: View {
    
    ///swiftUI要改变值还得加State
    @State var leftPercent:CGFloat //0在左边 1在右边
    var body: some View {
        HStack(alignment: .top, spacing: 0)  {
            Button {
                print("tap camera")
            } label: {
                Image(systemName: "camera").resizable().scaledToFit().frame(
                    width: kButtonHeight,height: kButtonHeight
                ).padding(.horizontal,15).padding(.top,5).foregroundColor(.black)
            }
            Spacer()
            
            VStack(spacing: 3) {
                HStack(spacing: 0)  {
                    Text("推荐").bold().frame(
                        width: kLableWidth,height: kButtonHeight
                    ).padding(.top,5)
                        .opacity(Double(1-leftPercent*0.5)).onTapGesture {
                        withAnimation {
                            self.leftPercent = 0
                        }
                    }
                    Spacer()
                    Text("热门").bold().frame(
                        width: kLableWidth,height: kButtonHeight
                    ).padding(.top,5)
                        .opacity(Double(0.5+leftPercent*0.5))
                        .onTapGesture {
                        withAnimation {
                            self.leftPercent = 1
                        }
                    }
                }.font(.system(size: 20))
                
                GeometryReader{gemoetry in
                    
                }.frame(height: 6)
                RoundedRectangle(cornerRadius: 2).foregroundColor(.orange).frame(
                    width: 30,height: 4
                ).offset(x:(UIScreen.main.bounds.width*0.5)*(self.leftPercent-0.5)+(kLableWidth)*(0.5-self.leftPercent))
                
                
            }.frame(width: UIScreen.main.bounds.width*0.5)
            Spacer()
            Button {
                print("tap camera")
            } label: {
                Image(systemName: "plus.circle.fill").resizable().scaledToFit().frame(
                    width: kButtonHeight,height: kButtonHeight
                ).padding(.horizontal,15).padding(.top,5).foregroundColor(.orange )
            }
          
        }
        
        
    }
}

struct HomeNavBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavBar(leftPercent: 0)
    }
}
