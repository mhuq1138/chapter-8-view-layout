//
//  TopRoundedCornerView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct TopRoundedCornerView: View {
    var color:Color = .black
    var radius:CGFloat = 0.0
    var body: some View {
        GeometryReader{ geometry in
            Path{ path in
                let w = geometry.size.width
                let h = geometry.size.height
                
                path.move(to: CGPoint(x: 0.0, y: h))
                path.addLine(to: CGPoint(x: 0.0, y:  self.radius))
                path.addArc(center: CGPoint(x: self.radius, y: self.radius), radius: self.radius, startAngle: Angle(degrees: -180), endAngle: Angle(degrees: -90), clockwise: false)
                path.addLine(to: CGPoint(x: w - self.radius, y: 0))
                path.addArc(center: CGPoint(x: w - self.radius, y: self.radius), radius: self.radius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w , y: h))
                path.addLine(to: CGPoint(x: 0 , y: h))
                path.addLine(to: CGPoint(x: 0 , y: 0))
            }.fill(self.color)
            
        }.border(Color.red)
    }
}

struct TopRoundedCornerView_Previews: PreviewProvider {
    static var previews: some View {
        TopRoundedCornerView()
    }
}
