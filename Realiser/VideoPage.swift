//
//  VideoPage.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-04.
//

import SwiftUI

struct VideoPage: View {
    let videoID: String
    let title: String
    var body: some View {
        VStack {
            Text(title)
            VideoView(videoID: videoID)
        }
        .padding()
    }
}

struct VideoPage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPage(videoID: "高速素粒子衝突型加速器",title: "QtNIMB72Br0")
    }
}
