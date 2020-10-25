//
//  TextPreferenceKey.swift
//  AnchorPreference Examples
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct TextPreferenceKey: PreferenceKey {
    typealias Value = [TextPreferenceData]
    
    static var defaultValue:[TextPreferenceData] = []
    
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value.append(contentsOf: nextValue())
    }
}

