//
//  ContentView.swift
//  HStack Layout Examples
//
//  Created by Mazharul Huq on 10/17/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:15){
            MyHStackView(alignment: .top)
            MyHStackView(alignment: .center)
            MyHStackView(alignment: .bottom)
            MyHStackView(alignment: .firstTextBaseline)
            MyHStackView(alignment: .lastTextBaseline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
