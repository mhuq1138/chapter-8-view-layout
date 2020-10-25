//
//  SizePreferenceKey.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
//

import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue:[CGSize] = [.zero]
    
    static func reduce(value: inout [CGSize], nextValue: () -> [CGSize]) {
        value.append(contentsOf: nextValue())
    }
}
