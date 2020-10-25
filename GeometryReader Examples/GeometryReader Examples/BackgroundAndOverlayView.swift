//
//  BackgroundAndOverlayView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some View {
        VStack{
            Text("Hello World")
               .font(.largeTitle)
               .foregroundColor(.white)
               .padding(20)
               .background(TopRoundedCornerView(color: .blue, radius: 20.0))
                .padding(.bottom, 20)
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 150, alignment: .center)
                .overlay(OverlayRectangleView())
                .padding(.bottom, 60.0)
        }.border(Color.gray)
    }
}

struct BackgroundAndOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayView()
    }
}
