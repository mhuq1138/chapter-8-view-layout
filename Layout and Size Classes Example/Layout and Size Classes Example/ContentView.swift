//
//  ContentView.swift
//  Layout and Size Classes Example
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
        
    var body: some View {
        if horizontalSizeClass == .compact {
            return AnyView(VerticalLayoutView())
        }
        else{
            return AnyView(HorizontalLayoutView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
