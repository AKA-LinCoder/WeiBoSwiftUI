//
//  PostImageCell.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI

struct PostImageCell: View {
    let images:[String]
    let width:CGFloat
    var body: some View {
        Group{
            if images.count==1{
                loadImage(name: images[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: width-30,height: (width)*0.75).clipped()
            } else if images.count==2{
                PostImageCell(images: images, width: width )
            } else if images.count==3{
                
            } else if images.count==4{
                
            } else if images.count==5{
                
            } else if images.count==6{
                
            }
        }
    }
}

struct PostImageCellRow:View{
    
    let images:[String]
    let width:CGFloat
    var body: some View{
        HStack(spacing:6){
            ForEach(images,id: \.self){ image in
                loadImage(name: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: (self.width-6*CGFloat((self.images.count-1)))/CGFloat(self.images.count),height:(self.width-6*CGFloat((self.images.count-1)))/CGFloat(self.images.count)
                    ).clipped()
            }
        }
    }
}


struct PostImageCell_Previews: PreviewProvider {
    static var previews: some View {
        let images = postList.list[0].images
        let width = UIScreen.main.bounds.width
        return PostImageCell(images: Array(images[0...0]),width: width)
    }
}
