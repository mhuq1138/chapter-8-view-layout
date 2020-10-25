//
//  ContentView.swift
//  AnchorPreference Examples
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SelectTextView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Highlighing Text")
                }
            GetLargestView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Get Largest View ")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
