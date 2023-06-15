//
//  PostListView.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI

struct PostListView: View {
    
    let category: PostListCategory
    var postList : PostList{
        switch category {
        case .recommend:
            return loadPostListData(fileName: "PostListData_recommend_1.json")
        case .hot:
            return loadPostListData(fileName: "PostListData_hot_1.json")
        }
    }
    
    var body: some View {
        List{
            ForEach(self.postList.list) { post in
                //垂直屏幕方向
                ZStack{
                    PostCell(post: post)
                        .listRowSeparator(.hidden)
                    NavigationLink(destination: PostDetailView(post: post)) {
                       EmptyView()
                    }
                    //隐藏跳转小箭头
                    .opacity(0)
                }.listRowInsets(EdgeInsets())

            }
        }.listStyle(.plain)
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostListView(category: .recommend)
                .navigationBarTitle("我是标题")
            ///想要隐藏 必须随便设置个标题
                .navigationBarHidden(true)
        }
    }
}

