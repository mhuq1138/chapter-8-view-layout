//
//  ContentView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView{
            DisplayMessageView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.square.fill")
                        Text("Message Preference")
                    }
                }
                
            GetLargestView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.square.fill")
                        Text("Setting View Size")
                    }
                }
                
            SelectTextView()
                .tabItem {
                    VStack {
                        Image(systemName: "3.square.fill")
                        Text("High Light Text View")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
