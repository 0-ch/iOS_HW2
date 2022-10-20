//
//  AlbumView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/20.
//

import SwiftUI

struct AlbumView: View {
    let album: String
    let number: Int
    var body: some View {
        VStack {
            Image(album)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
            Text(album)
        }
    }
}
struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView(album: "演說家", number: 1)
    }
}


