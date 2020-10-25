//
//  ContentView.swift
//  Ignore Safe Area Example
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
        .font(.largeTitle)
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
        .foregroundColor(.white)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
