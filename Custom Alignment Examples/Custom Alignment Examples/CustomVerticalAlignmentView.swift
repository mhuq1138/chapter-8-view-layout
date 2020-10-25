//
//  CustomVerticalAlignmentView.swift
//  Custom Alignment Examples
//
//  Created by Mazharul Huq on 10/22/20.
//

import SwiftUI

struct CustomVerticalAlignmentView: View {
    @State var selectedIndex = 0
    let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    
    var body: some View {
        HStack(alignment: VerticalAlignment.myVerticalAlignment, spacing: 5){
            
            Image(systemName: "checkmark")
                .font(.largeTitle)
                .alignmentGuide(.myVerticalAlignment, computeValue: {d in
                    d[VerticalAlignment.center]
                })
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 5){
                ForEach(days.indices, id: \.self) { i in
                    if i == self.selectedIndex {
                        Text(self.days[i])
                            .alignmentGuide(.myVerticalAlignment, computeValue: { d in d[VerticalAlignment.center] })
                    } else {
                        Text(self.days[i])
                            .onTapGesture {
                                withAnimation { self.selectedIndex = i}
                                    }
                            }
                    }
                }
            }.font(.largeTitle)
             .border(Color.gray)
    }
}

struct CustomVerticalAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomVerticalAlignmentView()
    }
}
