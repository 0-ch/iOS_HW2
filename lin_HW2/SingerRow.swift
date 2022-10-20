//
//  SingerRow.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct SingerRow: View {
    let singer: Singer
    var body: some View {
                HStack {
                        Image(singer.name)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                        Text(singer.name)
                    Spacer()
                }
            
    }
}

struct SingerRow_Previews: PreviewProvider {
    static var previews: some View {
        SingerRow(singer:Singer(name:"王以太",songs: ["目不轉睛","人間天堂"]))  }
}
