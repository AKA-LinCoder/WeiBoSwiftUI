//
//  HomeView.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .center) {
                    PostListView(category: .recommend).frame(width: UIScreen.main.bounds.width)
                    PostListView(category: .hot).frame(width: UIScreen.main.bounds.width)
                }
            }
            //忽略下面的安全区域
            .edgesIgnoringSafeArea(.bottom)
           
            .navigationBarItems(leading: HomeNavBar(leftPercent: 0))
                .navigationBarTitle("首页",displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
