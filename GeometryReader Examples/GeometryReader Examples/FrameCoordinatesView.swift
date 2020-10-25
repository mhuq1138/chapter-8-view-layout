//
//  FrameCoordinatesView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct FrameCoordinatesView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width:300, height: 100, alignment: .center)
                .background(Color.orange)
            CustomCoordinateView()
        }
    }
}

struct FrameCoordinatesView_Previews: PreviewProvider {
    static var previews: some View {
        FrameCoordinatesView()
    }
}
