//
//  ContentView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
                HipHopView()
                     .tabItem { Image(systemName: "music.note")
                         Text("Hip Hop") }
                 KpopView()
                     .tabItem { Image(systemName: "music.note")
                         Text("K-pop") }
                 PhotoView()
                     .tabItem { Image(systemName: "photo")
                         Text("Photo") }
                VideoView().tabItem { Image(systemName: "film")
                    Text("Live Video") }
                AboutView().tabItem { Image(systemName: "pencil.circle")
                    Text("About") }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
