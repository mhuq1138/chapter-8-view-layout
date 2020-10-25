//
//  VStackAndOffsetView.swift
//  Stack and Offset Examples
//
//  Created by Mazharul Huq on 10/19/20.
//

import SwiftUI

struct VStackAndOffsetView: View {
    @State private var offsetFlag = false
    let size1 =  CGSize(width: 0.0, height: 0.0)
    let size2 =  CGSize(width: 155.0, height: -105.0)
    
    var body: some View {
        VStack(spacing: 40){
            VStack(alignment: .leading, spacing: 5){
                Rectangle()
                   .fill(Color.red)
                   .frame(width: 150, height: 100)
                Rectangle()
                   .fill(Color.blue)
                   .frame(width: 150, height: 100)
                    .offset(offsetFlag ? size2: size1)
             }.frame(width: 320, height: 210, alignment: .leading)
              .animation(.easeIn(duration: 2))
            Button("Animate"){
                offsetFlag.toggle()
            }
        }.padding()
         .border(Color.gray)
    }
}

struct VStackAndOffsetView_Previews: PreviewProvider {
    static var previews: some View {
        VStackAndOffsetView()
    }
}
