//
//  ContentView.swift
//  ZStack Layout Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20){
            DefaultAlignmentView()
            TopLeadingAlignmentView()
            BottomTrailingAlignmentView()
            LeadingAlignmentView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
