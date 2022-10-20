//
//  HipHopAlbumView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI


struct HipHopAlbumView: View {
    let albums = ["演說家","Feel&Sight","倖存者的負罪感"]
    var body: some View {
        VStack{
            Text("Hip Hop Album Cover").bold().font(.custom("Nagurigaki-Crayon", size: 30))
            let columns = Array(repeating: GridItem(), count: 2)
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(albums.indices, id: \.self) { item in
                                AlbumView(album: albums[item], number: item + 1)
                            }
                        }
                    }
        }
    }
}

struct HipHopAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        HipHopAlbumView()
    }
}
