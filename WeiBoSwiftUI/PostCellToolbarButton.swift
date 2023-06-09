//
//  PostCellToolbarButton.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI

struct PostCellToolbarButton: View {
    let image:String
    let text:String
    let color:Color
    let action:()->Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing:5) {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18,height: 18)
                Text(text).font(.system(size: 15))
            }.foregroundColor(color)
        }
        //避免其他按钮点到
        .buttonStyle(BorderlessButtonStyle())

    }
}

struct PostCellToolbarButton_Previews: PreviewProvider {
    static var previews: some View {
        PostCellToolbarButton(image: "heart", text: "点赞", color: .red) {
            
        }
    }
}
