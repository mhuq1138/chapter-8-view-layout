//
//  SizeGetterView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
//

import SwiftUI

struct SizeGetterView: View {
    var body: some View {
        GeometryReader{g in
            Rectangle()
                .fill(Color.clear)
                .preference(key: SizePreferenceKey.self, value: [g.size])
        }
    }
}


