//
//  MyTextView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
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
            }.background(PreferenceViewSetter(index: index))
        }
}
