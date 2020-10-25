//
//  MyRectangleView.swift
//  Explicit Alignment Examples
//
//  Created by Mazharul Huq on 10/21/20.
//

import SwiftUI

struct MyRectangleView: View {
    var width: CGFloat
    var height: CGFloat
    var color: Color
            
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: width, height:height)
    }
}
