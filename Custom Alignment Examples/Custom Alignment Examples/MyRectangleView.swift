//
//  MyRectangleView.swift
//  Custom Alignment Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

struct MyRectangleView: View {
    let width:CGFloat
    let height:CGFloat
    let color:Color
        
    var body: some View{
        Rectangle()
            .fill(color)
            .frame(width: width, height: height)
    }
}

