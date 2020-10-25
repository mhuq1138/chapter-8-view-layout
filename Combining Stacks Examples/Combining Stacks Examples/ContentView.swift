//
//  ContentView.swift
//  Combining Stacks Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NestedStacksView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Nested Stacks")
                }
            ImagePyramidView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Image Pyramid")
                }
            BarChartView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Monthly Rainfall")
                }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
