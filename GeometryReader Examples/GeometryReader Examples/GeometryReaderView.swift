//
//  GeometryReaderView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack {
            GeometryReader{g in
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 2*g.size.width/3, height: g.size.height/4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: g.size.width/6, y: g.size.height/3)
                    .onTapGesture {
                        print("Global center: \(g.frame(in: .global).midX), \(g.frame(in: .global).midY)")
                        print("Local center: \(g.frame(in: .local).midX), \(g.frame(in: .local).midY)")
                        print("Custom center: \(g.frame(in: .named("Custom")).midX), \(g.frame(in: .named("Custom")).midY)")
                    }
            }
        }.padding()
         .frame(width: 350, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
         .border(Color.blue)
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
