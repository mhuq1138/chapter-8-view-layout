//
//  CenterAlignmentView.swift
//  VStack Layout Examples
//
//  Created by Mazharul Huq on 10/16/20.
//

import SwiftUI

struct CenterAlignmentView: View {
    var body: some View {
        VStack(alignment: .center,spacing:10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Color.red
                .frame(width: 200, height: 50)
            Color.blue
                .frame(width: 300, height: 75)
        }.padding()
        .border(Color.gray)
    }
}

struct CenterAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CenterAlignmentView()
    }
}
