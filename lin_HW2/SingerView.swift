//
//  SingerView.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/20.
//

import SwiftUI

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

struct SingerView_Previews: PreviewProvider {
    static var previews: some View {
        SingerView(singer: "Mina", number: 1)
    }
}
