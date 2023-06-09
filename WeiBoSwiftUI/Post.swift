//
//  Post.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI
//Codable 既可以编码也可以解码
//Identifiable 会要求有一个ID的属性，在其他地方用的时候默认就会使用ID
struct Post:Codable,Identifiable {
    let id:Int
    let avatar:String
    let name:String
    let vip:Bool
    let date:String
    var isFollowed:Bool
    let text:String
    let images:[String]
    let commentCount:Int
    let likeCount:Int
    let isLiked:Bool
}


extension Post{
    //只读属性叫做计算型属性
    var commentCountText:String{
        if commentCount<=0 {return "评论"}
        if commentCount<1000 {return "\(commentCount)"}
        return String(format: "%.1fK", Double(commentCount/1000))
    }
    
    var likeCountText:String{
        if likeCount<=0 {return "点赞"}
        if likeCount<1000 {return "\(likeCount)"}
        return String(format: "%.1fK", Double(likeCount/1000))
    }
    
    
    var avaterImage:Image{
        return loadImage(name: avatar)
    }
}


struct PostList:Codable {
    var list:[Post]
}

let postList = loadPostListData(fileName: "PostListData_recommend_1.json")

//MARK - 解析数据结构
func loadPostListData(fileName:String)->PostList {

    guard  let url = Bundle.main.url(forResource: fileName, withExtension: nil) else{
        fatalError("can not find file in main bundle")
    }
    guard let data = try? Data(contentsOf: url) else{
        fatalError("无法加载url")
    }
    guard let  list = try? JSONDecoder().decode(PostList.self, from: data) else{
        fatalError("转化异常")
    }
    return list;
}


func loadImage(name:String)->Image{
    print("加载图片")
    return Image(uiImage: UIImage(named: name)!)
}
