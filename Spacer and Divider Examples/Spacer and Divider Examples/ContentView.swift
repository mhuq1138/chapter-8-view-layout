//
//  ContentView.swift
//  Spacer and Divider Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SpacerView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Spacer")
                }
            DividerView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Divider")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
