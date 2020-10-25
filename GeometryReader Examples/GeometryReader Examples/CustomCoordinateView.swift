//
//  CustomCoordinateView.swift
//  GeometryReader Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct CustomCoordinateView: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.green)
                .frame(width: 300, height: 30)
            GeometryReaderView()
            Text("Tap blue view for coordinates")
                .font(.title)
        }.padding()
         .border(Color.orange)
         .coordinateSpace(name: "Custom")
    }
}

struct CustomCoordinateView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCoordinateView()
    }
}
