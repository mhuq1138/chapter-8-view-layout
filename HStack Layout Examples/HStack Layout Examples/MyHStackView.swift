//
//  MyHStackView.swift
//  HStack Layout Examples
//
//  Created by Mazharul Huq on 10/17/20.
//

import SwiftUI

struct MyHStackView: View {
    let alignment: VerticalAlignment
    var body: some View {
        HStack(alignment:alignment){
            Image("swiftui-96x96")
            Text("Hello")
                .font(.system(size: 40))
            Text("from SwiftUI")
                .font(.title)
        }.frame(width: 320)
         .border(Color.gray, width: 1)
    }
}

struct MyHStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyHStackView(alignment:.center)
    }
}
