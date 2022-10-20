//
//  KpopAlbumView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/20.
//

import SwiftUI

struct KpopAlbumView: View {
    let singers = ["Mina","Taeyeon"]
    let albums = ["EyesWideOpen","INVU"]
    var body: some View {
        List{
            VStack {
                Text("K-pop Album Cover").bold().font(.custom("Nagurigaki-Crayon", size: 30))
                ScrollView(.horizontal) {
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows) {                ForEach(singers.indices, id: \.self) { item in
                            SingerView(singer: singers[item], number: item + 1)
                        }
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
                let columns = [GridItem()]
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
}

struct KpopAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        KpopAlbumView()
    }
}

struct SingerView: View {
    let singer: String
    let number: Int
    var body: some View {
        VStack {
            Image(singer)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
                .clipShape(Circle())
            Text(singer)
        }
    }
}
