//
//  ContentView.swift
//  Custom Alignment Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            CustomHorizontalAlignmentView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Custom Horizontal Alignment")
                }
            CustomVerticalAlignmentView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Custom Vertical Alignment")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
