//
//  SwiftUIView.swift
//  
//
//  Created by Peter Pan on 2023/2/7.
//

import SwiftUI
import AVFoundation

public struct AboutView: View {
   
    let player = AVPlayer()
    
    public init() {
    }
    
    public var body: some View {
            VStack {
                Text("彼得潘")
                    .font(.title)
                Image("peter", bundle: .module)
                    .resizable()
                    .scaledToFit()
                Text("""
    擺渡人靈感來自梁朝偉的電影擺渡人，
    電影裡梁朝偉專門幫人解決愛情問題。
    由於之前時常有朋友向彼得潘求助工作或學校遇到的 iOS App 開發問題，
    彼得潘決定向偶像偉仔看齊，化身 iOS App 金牌擺渡人 !
    """)
            }
            .padding()
            .onAppear {
                let url = Bundle.module.url(forResource: "a-small-miracle", withExtension: "mp3")!
                let item = AVPlayerItem(url: url)
                player.replaceCurrentItem(with: item)
                player.play()
            }
            .onDisappear {
                player.pause()
            }
        }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
