//
//  MessagePreferenceKey.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct MessagePreferenceKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}
