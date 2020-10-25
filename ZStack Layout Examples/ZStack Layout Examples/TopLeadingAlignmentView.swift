//
//  TopLeadingAlignmentView.swift
//  ZStack Layout Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct TopLeadingAlignmentView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.blue
                .frame(width: 250, height: 150)
            Color.red
                .frame(width: 200, height: 100)
        }.border(Color.gray)
    }
}

struct TopLeadingAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        TopLeadingAlignmentView()
    }
}
