//
//  ContentView.swift
//  Implicit Alignment Examples
//
//  Created by Mazharul Huq on 10/20/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VStack(spacing:20){
                VStackAlignmentView()
                HStackAlignmentView()
                ZStackAlignmentView()
            }.tabItem {
                Image(systemName: "1.square.fill")
                Text("Stack Alignment")
            }
            FrameAlignmentView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Frame Alignment")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
