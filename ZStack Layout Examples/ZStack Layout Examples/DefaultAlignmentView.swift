//
//  DefaultAlignmentView.swift
//  ZStack Layout Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct DefaultAlignmentView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Circle()
                .fill(Color.blue)
                .frame(width: 170, height: 170)
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(.white)
        }.border(Color.gray)
    }
}

struct DefaultAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultAlignmentView()
    }
}
