//
//  SimpleGeometryReaderView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

struct SimpleGeometryReaderView: View {
    @State private var string = "Hello, World!"
    var body: some View {
        VStack(spacing:20) {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                Rectangle()
                    .fill(Color.orange)
            }.frame(width: 300, height: 300)
             .border(Color.gray)
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                
                GeometryReader{g in
                    VStack {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 2*g.size.width/3, height: 2*g.size.height/3)
                            .offset(x: g.size.width/3, y: g.size.height/3)
                            .onTapGesture {
                                print(g.frame(in: .global).size)
                             }
                    }
                }
            }.frame(width: 300, height: 300)
             .border(Color.gray)
            
        }
    }
}

struct SimpleGeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleGeometryReaderView()
    }
}
