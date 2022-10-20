//
//  SongList.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct SongList: View {
    let singer:Singer
    var body: some View {
            List{
                ForEach(0..<singer.songs.count){
                    i in
                    SongRow(song:singer.songs[i])
                }
            }   
    }
}

struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList(singer: Singer(name:"王以太",songs: ["目不轉睛","人間天堂"]))
    }
}
