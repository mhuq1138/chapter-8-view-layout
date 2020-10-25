//
//  BarWithLabelView.swift
//  Combining Stacks Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct BarWithLabelView: View {
    let month:String
    let rainfall:CGFloat
    var body: some View {
        VStack{
            Rectangle()
               .fill(Color.orange)
               .frame(width:20.0,height:50*rainfall)
            Text(month)
        }
    }
}


