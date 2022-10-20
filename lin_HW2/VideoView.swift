//
//  VideoView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/20.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .trailing, endPoint: .leading).ignoresSafeArea()
            VStack{
                Text("王以太 別怕變老 現場版")
                let url = Bundle.main.url(forResource: "Video", withExtension: "mp4")!

                VideoPlayer(player: AVPlayer(url: url))
            }
            
        }
        
        
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
