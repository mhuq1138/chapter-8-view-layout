//
//  ZStackAndOffsetView.swift
//  Stack and Offset Examples
//
//  Created by Mazharul Huq on 10/19/20.
//

import SwiftUI

struct ZStackAndOffsetView: View {
    @State private var  animateFlag = true
    
    var body: some View {
        VStack(spacing:120) {
            Button(animateFlag ? "Create Ring":"Collapse Ring"){
                animateFlag.toggle()
            }
            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(width: 75, height: 75)
                    ForEach((0...11), id:\.self){i in
                        SmallCircleView(angle: .pi*Double(i)/6, radius: animateFlag ? 0: 120)
                }
            }.animation(.spring(response: 2, dampingFraction: 0.6, blendDuration: 1))
            
        }.padding()
         .frame(width: 300, height: 350, alignment: .top)
         .border(Color.gray)
    }
}

struct ZStackAndOffsetView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackAndOffsetView()
    }
}
