//
//  PostVIPBadge.swift
//  WeiBoSwiftUI
//
//  Created by Estim on 2023/6/9.
//

import SwiftUI

struct PostVIPBadge: View {
    var vip:Bool
    var body: some View {
        Group{
            if vip {
                Text("V")
                    .font(.system(size: 11))
                    .frame(width: 15,height: 15)
                    .background(.red)
                    .clipShape(Circle())
                    .overlay {
                        RoundedRectangle(cornerRadius: 7.5)
                            .stroke(.white,lineWidth: 1)
                    }
            }
        }
    }
}

struct PostVIPBadge_Previews: PreviewProvider {
    static var previews: some View {
        PostVIPBadge(vip: true)
    }
}
