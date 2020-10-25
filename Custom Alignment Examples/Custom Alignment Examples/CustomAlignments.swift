//
//  CustomAlignments.swift
//  Custom Alignment Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

extension HorizontalAlignment{
    enum MyHorizontalAlignment: AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d.height
        }
    }
        
    static let myHorizontalAlignment = HorizontalAlignment(MyHorizontalAlignment.self)
}

extension VerticalAlignment{
    enum MyVerticalAlignment: AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    
    static let myVerticalAlignment = VerticalAlignment(MyVerticalAlignment.self)
}
