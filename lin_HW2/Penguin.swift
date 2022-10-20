//
//  Penguin.swift
//  lin_HW2
//
//  Created by User01 on 2022/10/19.
//

import SwiftUI

struct Penguin: View {
    @State private var opacity: Double = 0
    var body: some View {
        VStack {
                    Button("瘋狂點擊") {
                        opacity += 0.1
                    }
                    .font(.title)
            HStack (alignment: .center){
                        Image("Penguin")
                            .resizable()
                            .frame(width: 200, height: 100, alignment: .center)
                            .opacity(opacity)
                            .clipShape(Circle())
                    }
        }
    }
}

struct Penguin_Previews: PreviewProvider {
    static var previews: some View {
        Penguin()
    }
}
