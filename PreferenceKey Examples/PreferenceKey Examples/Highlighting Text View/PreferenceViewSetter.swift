//
//  PreferenceViewSetter.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
//

import SwiftUI

struct PreferenceViewSetter: View {
    let index: Int
    var body: some View {
        GeometryReader{ g in
            Rectangle()
                .fill(Color.clear)
                .preference(key: TextPreferenceKey.self, value: [PreferenceData(viewIndex: index, viewRect: g.frame(in: .named("myZStack")))])
        }
    }
}
