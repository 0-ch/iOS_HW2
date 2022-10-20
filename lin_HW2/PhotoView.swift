//
//  PhotoView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct PhotoView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .trailing, endPoint: .leading).ignoresSafeArea()
            VStack{
                TabView{
                    HipHopAlbumView()
                        .tabItem {
                            Text("yellow")
                    }
                    KpopAlbumView()                                  .tabItem{
                            Text("blue")
                    }
                }
                .tabViewStyle(PageTabViewStyle())
            }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
