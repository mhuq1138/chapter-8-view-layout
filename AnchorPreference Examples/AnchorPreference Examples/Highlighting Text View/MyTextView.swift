//
//  MyTextView.swift
//  AnchorPreference Examples
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct MyTextView: View {
    @Binding var activeIndex:Int
    let label: String
    let font: Font
    let index: Int
        
    var body: some View {
        Text(label)
            .font(font)
            .padding(5)
            .onTapGesture {
                activeIndex = index
            }.anchorPreference(key: TextPreferenceKey.self, value: .bounds, transform: { [TextPreferenceData(viewIndex:index, bounds: $0)]
            })
    }
}
