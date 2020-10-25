//
//  HorizontalLayoutView.swift
//  Layout and Size Classes Example
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct HorizontalLayoutView: View {
    var body: some View {
        HStack(alignment: .center){
            Rectangle()
                .fill(Color.red)
                .frame(width: 250, height: 200, alignment: .center)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 250, height: 200, alignment: .center)
            Rectangle()
                .fill(Color.green)
                .frame(width: 250, height: 200, alignment: .center)
        }
    }
}

struct HorizontalLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalLayoutView()
    }
}
