//
//  PostCell.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI

struct PostCell: View {
    var post:Post
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 5)  {
                post.avaterImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                    .overlay {
                        PostVIPBadge(vip: post.vip)
                            .offset(x: 16,y: 16)
                    }
                
                VStack(alignment: .leading, spacing: 5,content: {
                    Text(post.name)
                        .font(Font.system(size: 20))
                        .foregroundColor(.orange)
                        .lineLimit(1)
                    Text(post.date)
                        .font(Font.system(size: 16))
                        .foregroundColor(.gray)
                        .lineLimit(1)
                   
                  

                   
                }).padding(.leading,10)
                if(!post.isFollowed){
                    Spacer()
                    Button {
                        print("哈哈哈哈")
                    } label: {
                        Text("关注")
                            .font(.system(size: 14))
                            .foregroundColor(.orange)
                            .frame(width: 50,height: 26)
                            .overlay {
                                RoundedRectangle(cornerRadius: 13)
                                    .stroke(Color.orange,lineWidth: 1)
                            }
                    }.buttonStyle(BorderlessButtonStyle())
                }
         
            }
            Text(post.text)
                .font(.system(size: 17))
            if !post.images.isEmpty {
                PostImageCell(images: post.images, width: UIScreen.main.bounds.width-30)
       
            }
            Divider()
            HStack(spacing:0) {
                Spacer()
                PostCellToolbarButton(image: "message", text: post.commentCountText, color: .black) {
                    print("评论")
                }
                Spacer()
                PostCellToolbarButton(image: "heart", text: post.likeCountText, color: .red) {
                    print("点赞")
                }
                Spacer()
            }
            Rectangle().padding(.horizontal,-15).frame(height: 10).padding(.top,15).foregroundColor(.gray)
        }.padding(.horizontal,15)
       
        
        
       
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: postList.list[1])
    }
}
