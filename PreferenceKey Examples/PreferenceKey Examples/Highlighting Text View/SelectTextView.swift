//
//  SelectTextView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
//

import SwiftUI

struct SelectTextView: View {
    @State private var activeIndex: Int = 0
    @State private var rects: [CGRect] = Array<CGRect>(repeating: CGRect(), count: 5)
        
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
                .frame(width: rects[activeIndex].size.width, height: rects[activeIndex].size.height)
                .offset(x: rects[activeIndex].minX, y: rects[activeIndex].minY)
                .animation(.easeInOut(duration: 1.0))
            VStack{
                MyTextView(activeIndex: $activeIndex, label: "Hello from SwiftUI", font: .largeTitle, index: 0)
                MyTextView(activeIndex: $activeIndex, label: "How are you", font: .title, index: 1)
                MyTextView(activeIndex: $activeIndex, label: "Choose me", font: .title, index: 2)
                MyTextView(activeIndex: $activeIndex, label: "Thank you", font: .title, index: 3)
                MyTextView(activeIndex: $activeIndex, label: "Goodbye", font: .title, index: 4)
            }
        }.onPreferenceChange(TextPreferenceKey.self){ preferences in
                for p in preferences{
                    rects[p.viewIndex] = p.viewRect
                }
            }.coordinateSpace(name: "myZStack")
         .padding()
         .border(Color.gray)
    }
}


struct SelectTextView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTextView()
    }
}
