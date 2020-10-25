//
//  SizePreferenceKey.swift
//  AnchorPreference Examples
//
//  Created by Mazharul Huq on 10/25/20.
//

import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue:[MultiAnchorData] = []
    
    static func reduce(value: inout [MultiAnchorData], nextValue: () -> [MultiAnchorData]) {
        value.append(contentsOf: nextValue())
    }
}

