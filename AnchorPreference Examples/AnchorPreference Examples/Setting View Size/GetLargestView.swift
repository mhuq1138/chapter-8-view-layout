//
//  GetLargestView.swift
//  AnchorPreference Examples
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct GetLargestView: View {
    @State private var largestSize: CGSize = .zero
    var body: some View {
        VStack(spacing:20){
            Text("Hello, world! from SwiftUI")
                .font(.title)
                .anchorPreference(key: SizePreferenceKey.self, value: .topLeading, transform:{[MultiAnchorData(topLeading:  $0)]})
                .transformAnchorPreference(key: SizePreferenceKey.self, value: .bottomTrailing,transform: {(value: inout [MultiAnchorData], anchor:
                           Anchor<CGPoint>) in
                                value[0].bottomTrailing = anchor
                          })
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 150)
                .anchorPreference(key: SizePreferenceKey.self, value: .topLeading, transform:{[MultiAnchorData(topLeading:  $0)]})
                .transformAnchorPreference(key: SizePreferenceKey.self, value: .bottomTrailing, transform: {(value: inout [MultiAnchorData], anchor:
                            Anchor<CGPoint>) in
                                value[0].bottomTrailing = anchor
                            })
            Rectangle()
                .fill(Color.green)
                .frame(width: 250, height: 50)
                .anchorPreference(key: SizePreferenceKey.self, value: .topLeading, transform:{[MultiAnchorData(topLeading:  $0)]})
                .transformAnchorPreference(key: SizePreferenceKey.self, value: .bottomTrailing, transform: {(value: inout [MultiAnchorData], anchor:
                            Anchor<CGPoint>) in
                                 value[0].bottomTrailing = anchor
                            })
        }.border(Color.gray)
         .backgroundPreferenceValue(SizePreferenceKey.self){ p in
             return GeometryReader{ g in
                 VStack{
                     createRectangle(g, p)
                 }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
             }
        }
    }
    
    func createRectangle(_ geometry: GeometryProxy, _ preferences: [MultiAnchorData])-> some View{
                                                                                      
        var widest:CGFloat = 0
        var highest:CGFloat = 30
               
        for p in preferences{
            let topLeading = geometry[p.topLeading!]
            let bottomTrailing = geometry[p.bottomTrailing!]
            widest = max(widest, bottomTrailing.x - topLeading.x)
            highest = max(highest, bottomTrailing.y - topLeading.y)
        }
        return Rectangle()
                  .fill(Color.blue)
                  .frame(width: widest, height: highest, alignment: .center)
                  .offset(x: 0, y: 300)
    }
}


struct GetLargestView_Previews: PreviewProvider {
    static var previews: some View {
        GetLargestView()
    }
}
