//
//  PostListView.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI

struct PostListView: View {
    
    init(){
    
//        UITableViewCell.appearance().selectionStyle = .none
    }

    var body: some View {

        List{
            ForEach(postList.list) { post in
   
                PostCell(post: post)
                //取消table的默认分割线
                    .listRowSeparator(.hidden)
            
            }
        }.listStyle(.plain)
      
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
