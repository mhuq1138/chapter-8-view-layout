//
//  BottomTrailingAlignmentView.swift
//  ZStack Layout Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct BottomTrailingAlignmentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(width: 250, height: 150)
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .padding(5)
        }.border(Color.gray)
    }
}

struct BottomTrailingAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTrailingAlignmentView()
    }
}
