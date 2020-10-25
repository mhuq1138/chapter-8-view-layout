//
//  SelectTextView.swift
//  AnchorPreference Examples
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct SelectTextView: View {
    @State private var activeIndex: Int = 0
        
    var body: some View {
        VStack{
            MyTextView(activeIndex: $activeIndex, label: "Hello from SwiftUI", font: .largeTitle, index: 0)
            MyTextView(activeIndex: $activeIndex, label: "How are you", font: .title, index: 1)
            MyTextView(activeIndex: $activeIndex, label: "Choose me", font: .title, index: 2)
            MyTextView(activeIndex: $activeIndex, label: "Thank you", font: .title, index: 3)
            MyTextView(activeIndex: $activeIndex, label: "Goodbye", font: .title, index: 4)
        }.backgroundPreferenceValue(TextPreferenceKey.self) { p in
            return GeometryReader{ g in
                ZStack{
                    self.createBackground(g, p)
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
            }
        }
    }
    
    func createBackground(_ geometry: GeometryProxy, _ preferences: [TextPreferenceData])-> some View{
                    
            let p = preferences.first(where:{ $0.viewIndex == self.activeIndex})
            let bounds = p != nil ? geometry[p!.bounds] : .zero
            return RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
                .frame(width: bounds.size.width, height: bounds.size.height)
                .offset(x: bounds.minX, y: bounds.minY)
                .animation(.easeInOut(duration: 1.0))
        }
}

struct SelectTextView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTextView()
    }
}
