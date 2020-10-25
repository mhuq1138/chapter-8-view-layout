//
//  ContentView.swift
//  Explicit Alignment Examples
//
//  Created by Mazharul Huq on 10/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AlignmentGuideView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Alignment Guide")
                }
            VStack{
                VStackAlignmentView()
                HStackAlignmentView()
            }.tabItem {
                Image(systemName: "2.square.fill")
                Text("Alignment Guide Player")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
