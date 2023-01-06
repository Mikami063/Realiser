//
//  ListRowView.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-04.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    let id: String
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://img.youtube.com/vi/\(id)/default.jpg"))
            Text(title)
            Spacer()
            NavigationLink("", destination: VideoPage(videoID: id, title:title))
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "sample title",id: "QtNIMB72Br0")
    }
}
