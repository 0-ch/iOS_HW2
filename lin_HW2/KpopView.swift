//
//  KpopView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct KpopView: View {
    let twiceSingers=[Singer(name:"Mina",songs: ["Good Person","Snowman"])]
    let girlsGenerationSingers=[Singer(name:"Taeyeon",songs: ["INVU"])]
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .trailing, endPoint: .leading).ignoresSafeArea()
            VStack{
                Text("K-pop").bold().font(.custom("Nagurigaki-Crayon", size: 30))
                NavigationView {
                    List{
                        Section (header: Text("Twice")){
                            ForEach(twiceSingers,id:\.name){
                                    singer in
                                    NavigationLink(
                                        destination: SongList(singer: singer),
                                        label: {
                                            SingerRow(singer:singer)
                                        })
                            }
                        }
                        Section (header: Text("Girls' Generation")){
                            ForEach(girlsGenerationSingers,id:\.name){
                                    singer in
                                    NavigationLink(
                                        destination: SongList(singer: singer),
                                        label: {
                                            SingerRow(singer:singer)
                                        })
                            }
                        }
                        
                    }.navigationTitle("女歌手")
                }
            }
        }
    }
}

struct KpopView_Previews: PreviewProvider {
    static var previews: some View {
        KpopView()
    }
}
