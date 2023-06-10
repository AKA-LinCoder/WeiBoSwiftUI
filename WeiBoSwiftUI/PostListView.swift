////
////  PostListView.swift
////  WeiBoSwiftUI
////
////  Created by Estim on 2023/6/9.
////
//
//import SwiftUI
//
//struct PostListView: View {
//
//
//
//    var body: some View {
//
//        List{
//            ForEach(postList.list) { post in
//                //垂直屏幕方向
//                ZStack{
//                    PostCell(post: post)
//                        .listRowSeparator(.hidden)
//                    NavigationLink(destination: PostDetailView(post: post)) {
//                       EmptyView()
//                    }
//                    //隐藏跳转小箭头
//                    .buttonStyle(.plain)
//                }.listRowInsets(EdgeInsets())
//
//            }
//        }.listStyle(.plain)
//
//    }
//}
//
//struct PostListView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            PostListView()
//                .navigationBarTitle("我是标题")
//            ///想要隐藏 必须随便设置个标题
//                .navigationBarHidden(true)
//        }
//    }
//}
//
//  ContentView.swift
//  PostDemo
//
//  Created by xiaoyouxinqing on 1/6/20.
//  Copyright © 2020 xiaoyouxinqing. All rights reserved.
//

import SwiftUI

struct PostListView: View {
  
    
    var body: some View {
        List {
            ForEach(postList.list) { post in
                ZStack {
                    PostCell(post: post)
                    NavigationLink(destination: PostDetailView(post: post)) {
                        EmptyView()
                    }.opacity(0)
        
                }
                .listRowInsets(EdgeInsets())
            }
        }.listStyle(.plain)
        
        /*
        // Left margin is not removed
        List(postList.list, id: \.name) { post in
            PostCell(post: post)
        }
         */
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostListView()
                            .navigationBarTitle("我是标题")
            //            ///想要隐藏 必须随便设置个标题
                            .navigationBarHidden(true)
        }
    }
}
