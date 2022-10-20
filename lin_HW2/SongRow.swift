//
//  SongRow.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct SongRow: View {
    let song:String
    var body: some View {
        HStack {
            Image(song)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .blur(radius: 1.0)
            VStack(alignment: .leading)
            {
                Text(song)
            }
            Spacer()
        }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        SongRow(song:"人間天堂")
    }
}
