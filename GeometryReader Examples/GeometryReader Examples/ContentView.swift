//
//  ContentView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SimpleGeometryReaderView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Simple Example")
                }
            FrameCoordinatesView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Coordinates")
                }
            VerticalStripesView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Vertical Stripes")
                }
            BackgroundAndOverlayView()
                .tabItem {
                    Image(systemName: "4.square.fill")
                    Text("Background and Overlay")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
