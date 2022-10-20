//
//  SwiftUIView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct HipHopView: View {
    let hipHopSingers = [Singer(name:"王以太",songs: ["目不轉睛","人間天堂"])]
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .trailing, endPoint: .leading).ignoresSafeArea()
            VStack{
                Text("Hip Hop").bold().font(.custom("Nagurigaki-Crayon", size: 30))
                NavigationView {
                    List{
                            ForEach(hipHopSingers,id:\.name){
                                singer in
                                NavigationLink(
                                    destination: SongList(singer: singer),
                                    label: {
                                        SingerRow(singer:singer)
                                    })
                            }
                    }.navigationTitle("男歌手")
                }
                
                
            }
        }
    }
}

struct HipHopView_Previews: PreviewProvider {
    static var previews: some View {
        HipHopView()
    }
}
