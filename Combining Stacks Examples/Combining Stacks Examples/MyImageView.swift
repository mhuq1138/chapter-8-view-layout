//
//  MyImageView.swift
//  Combining Stacks Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct MyImageView: View {
    var body: some View {
        Image("swiftui-96x96")
            .resizable()
            .frame(width: 30, height: 30)
    }
}

struct MyImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyImageView()
    }
}
