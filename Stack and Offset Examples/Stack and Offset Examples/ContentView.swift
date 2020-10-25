//
//  ContentView.swift
//  Stack and Offset Examples
//
//  Created by Mazharul Huq on 10/19/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:30){
            VStackAndOffsetView()
            ZStackAndOffsetView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
