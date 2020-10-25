//
//  OverlayRectangleView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct OverlayRectangleView: View {
    var body: some View {
        GeometryReader{geometry in
            Rectangle()
                .path(in: CGRect(x: 30, y: 30, width: geometry.size.width, height: geometry.size.height))
                .fill(Color.orange)
        }.border(Color.red)
    }
}

struct OverlayRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayRectangleView()
    }
}
