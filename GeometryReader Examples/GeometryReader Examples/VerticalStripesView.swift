//
//  VerticalStripesView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct VerticalStripesView: View {
    let color = [Color.blue, Color.red, Color.green, Color.orange, Color.gray  ]
        
    var body: some View {
        GeometryReader{ geometry in
            ForEach(0...4,id: \.self){i in
                Rectangle()
                    .path(in: CGRect(x: Double(3*i + 1)*Double(geometry.size.width)/16.0,y: 5.0,
                        width: Double(geometry.size.width)/8.0,
                        height: Double(geometry.size.height) - 15.0))
                    .fill(self.color[i])
            }
        }.border(Color.gray)
    }
}


struct VerticalStripesView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalStripesView()
    }
}
