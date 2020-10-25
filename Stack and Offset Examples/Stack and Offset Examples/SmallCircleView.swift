//
//  SmallCircleView.swift
//  Stack and Offset Examples
//
//  Created by Mazharul Huq on 10/19/20.
//

import SwiftUI

struct SmallCircleView: View {
    let angle:Double
    let radius:Double
        
    var body: some View {
        let x = cos(self.angle)*self.radius
        let y = sin(self.angle)*self.radius
        return Circle()
            .fill(Color.blue)
            .frame(width:40, height:40)
            .offset(CGSize(width: x, height: y))
    }
}
