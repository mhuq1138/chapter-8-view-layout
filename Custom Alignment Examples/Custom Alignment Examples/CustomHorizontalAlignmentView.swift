//
//  CustomHorizontalAlignmentView.swift
//  Custom Alignment Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

struct CustomHorizontalAlignmentView: View {
    var body: some View {
        VStack(alignment: .myHorizontalAlignment, spacing: 10){
            Text("Custom Alignment")
                .font(.title)
                .foregroundColor(.gray)
                .alignmentGuide(.myHorizontalAlignment, computeValue: {d in
                    d[HorizontalAlignment.leading]
                })
            MyRectangleView(width: 200, height: 60, color: Color.blue)
                
            MyRectangleView(width: 200, height: 30, color: Color.red)
                
            MyRectangleView(width: 200, height: 100, color: Color.green)
                
            MyRectangleView(width: 120, height: 20, color: Color.orange)
                .alignmentGuide(.myHorizontalAlignment, computeValue: { d in
                    d[HorizontalAlignment.trailing]
                })
        }.padding()
         .border(Color.gray)
    }
}

struct CustomHorizontalAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHorizontalAlignmentView()
    }
}
