//
//  TextPreferenceKey.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
//

import SwiftUI

struct TextPreferenceKey: PreferenceKey {
    typealias Value = [PreferenceData]
    
    static var defaultValue:[PreferenceData] = []
    
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value.append(contentsOf: nextValue())
    }
}

