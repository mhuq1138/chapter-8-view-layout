//
//  VStackWithDefaultView.swift
//  VStack Layout Examples
//
//  Created by Mazharul Huq on 10/16/20.
//

import SwiftUI

struct VStackWithDefaultView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .border(Color.red)
            Image("swiftui-300x300")
                .border(Color.red)
        }.border(Color.gray)
    }
}

struct VStackWithDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        VStackWithDefaultView()
    }
}
