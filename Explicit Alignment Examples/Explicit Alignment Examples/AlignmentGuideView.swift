//
//  AlignmentGuideView.swift
//  Explicit Alignment Examples
//
//  Created by Mazharul Huq on 10/21/20.
//

import SwiftUI

struct AlignmentGuideView: View {
    var body: some View {
        VStack(spacing:20) {
            VStack(alignment: .leading, spacing: 19){
                MyRectangleView(width: 250, height: 30, color: .blue)
                MyRectangleView(width: 200, height: 30, color: .red)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { _ in
                        30
                    })
                MyRectangleView(width: 240, height: 30, color: .green)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { d in
                        -d.width/3
                    })
            }.border(Color.gray)
            
            VStack(alignment: .trailing, spacing: 19){
                MyRectangleView(width: 250, height: 30, color: .blue)
                MyRectangleView(width: 200, height: 30, color: .red)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { _ in
                        30
                    })
                MyRectangleView(width: 240, height: 30, color: .green)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { d in
                        -d.width/3
                    })
            }.border(Color.gray)
            
            VStack(alignment: .leading, spacing: 19){
                MyRectangleView(width: 250, height: 30, color: .blue)
                MyRectangleView(width: 200, height: 30, color: .red)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { d in
                        d[.leading] + 30
                    })
                MyRectangleView(width: 240, height: 30, color: .green)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { d in
                        d[.trailing] - 160
                    })
            }.border(Color.gray)
            
            VStack(alignment: .leading) {
                MyRectangleView(width: 250, height: 30, color: .blue)
                Text("Hello, World!")
                    .font(.largeTitle)
                    .alignmentGuide(HorizontalAlignment.leading, computeValue: { d in
                        d[.trailing] - 2*d.width/3
                    })
            }.frame(width: 320, height: 100)
             .border(Color.gray)

        }
    }
}

struct AlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideView()
    }
}
