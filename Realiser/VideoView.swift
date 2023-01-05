//
//  VideoView.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-04.
//

import SwiftUI
import WebKit

struct VideoView: NSViewRepresentable{
    let videoID: String
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateNSView(_ nsView: WKWebView, context: Context) {
        guard let youtubeURL=URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        nsView.load(URLRequest(url: youtubeURL))
    }
}
