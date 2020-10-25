//
//  VStackAlignmentView.swift
//  Explicit Alignment Examples
//
//  Created by Mazharul Huq on 10/21/20.
//

import SwiftUI

struct VStackAlignmentView: View {
    let alignment: [HorizontalAlignment] = [.leading, .center, .trailing]
    @State var index = 0
    var body: some View {
        Form{
            VStack(alignment: alignment[index], spacing: 5){
                MyRectangleView(width: 180,height:30, color: .blue)
                MyRectangleView(width: 120,height:30, color: .red)
                    //Used for VStack alignment .leading
                    .alignmentGuide(.leading, computeValue: { _  in 20 })
                    //Used for VStack alignment .center
                    .alignmentGuide(HorizontalAlignment.center, computeValue: { d in d.width/2.0 - 20 })
                    //Used for VStack alignment .trailing
                    .alignmentGuide(.trailing, computeValue: { _  in  60 })
                
                MyRectangleView(width: 80,height:30, color: .green)
                    //Used for VStack alignment .leading
                    .alignmentGuide(.leading, computeValue: { _  in -20 })
                    //Used for VStack alignment .center
                    .alignmentGuide(HorizontalAlignment.center, computeValue: { d in -d.width/2.0 })
                    //Used for VStack alignment .trailing
                    .alignmentGuide(.trailing, computeValue: { _  in 30 })
            }.border(Color.gray)
        
             Picker(selection: $index, label: Text("Choose alignment")){
                 Text("Leading").tag(0)
                 Text("Center").tag(1)
                 Text("Trailing").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
           .padding(30)
        }
    }
}


struct VStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        VStackAlignmentView()
    }
}
