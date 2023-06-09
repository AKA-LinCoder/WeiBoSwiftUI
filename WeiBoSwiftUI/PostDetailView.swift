//
//  PostDetailView.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/10.
//

import SwiftUI

struct PostDetailView: View {
    let post:Post
    var body: some View {
        List {
            PostCell(post: post)
                .listRowInsets(EdgeInsets())
            ForEach(1...10,id: \.self){ i in
                Text("评论\(i)")
                
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("详情",displayMode: .inline)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: postList.list[0])
    }
}
