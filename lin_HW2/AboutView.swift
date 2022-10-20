//
//  AboutView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI
import AVFoundation
import AVKit
import UIKit

struct AboutView: View {
    @State private var opacity: Double = 0
    let player = AVPlayer()
    var body: some View {
        NavigationView{
            VStack{
                Text("作者推薦的音樂-目不轉睛")
                    .onAppear{
                    let url = Bundle.main.url(forResource: "Music", withExtension: "mp3")!
                    let playerItem = AVPlayerItem(url: url)
                    player.replaceCurrentItem(with: playerItem)
                    }
                    .padding()
                Button("播放"){
                    player.play()
                }
                Button("暫停"){
                    player.pause()
                }.padding()
                Link(destination: URL(string: "https://github.com/0-ch")!, label: {
                    Text("作者").font(.title).foregroundColor(.red) +      Text("的") +
                        Text("github").font(.title).foregroundColor(.gray)
                }).padding()
                NavigationLink(
                destination: Penguin().transition(.slide),
                    label: {
                    Text("企鵝")
                    })
                HStack {
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }) {
                        Image("icon1")
                            .resizable()
                            .scaledToFit()
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("icon2")
                    }) {
                        Image("icon2")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .frame(height: 200)
                }
            }
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
