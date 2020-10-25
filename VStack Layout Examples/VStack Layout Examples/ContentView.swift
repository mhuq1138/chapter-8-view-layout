//
//  ContentView.swift
//  VStack Layout Examples
//
//  Created by Mazharul Huq on 10/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VStackWithDefaultView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Default Parameters ")
                }
            VStack(spacing:20){
                LeadingAlignmentView()
                CenterAlignmentView()
                TrailingAlignmentView()
            }
            .tabItem {
                Image(systemName: "2.square.fill")
                Text("Custom Alignment and Spacing ")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
