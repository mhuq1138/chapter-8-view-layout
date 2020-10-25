//
//  NestedStacksView.swift
//  Combining Stacks Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct NestedStacksView: View {
    var body: some View {
        VStack {
            Color.orange
                .frame(width: 300, height: 20)
            HStack{
                Image("swiftui-96x96")
                VStack{
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                    Text("from SwiftUI")
                        .font(.title)
                }
            }
            Color.orange
                .frame(width: 300, height: 20)
        }.border(Color.gray)
    }
}

struct NestedStacksView_Previews: PreviewProvider {
    static var previews: some View {
        NestedStacksView()
    }
}
