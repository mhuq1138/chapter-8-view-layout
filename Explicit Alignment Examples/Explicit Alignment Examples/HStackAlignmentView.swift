//
//  HStackAlignmentView.swift
//  Explicit Alignment Examples
//
//  Created by Mazharul Huq on 10/21/20.
//

import SwiftUI

struct HStackAlignmentView: View {
    let alignment: [VerticalAlignment] = [.top, .center, .bottom]
    @State var index = 0
    
    var body: some View {
        Form{
            HStack(alignment: alignment[index], spacing: 5){
                MyRectangleView(width: 50,height:150, color: .blue)
                MyRectangleView(width: 50,height:150, color: .red)
                    //Used for HStack alignment .top
                    .alignmentGuide(.top, computeValue: { d  in d.width/2.0 })
                    //Used for HStack alignment .center
                    .alignmentGuide(VerticalAlignment.center, computeValue: { _ in 20 })
                    //Used for HStack alignment .bottom
                    .alignmentGuide(.bottom, computeValue: { d  in  2*d.height/3 })
                
                MyRectangleView(width: 50,height:150, color: .green)
                    //Used for HStack alignment .top
                    .alignmentGuide(.top, computeValue: { d  in -d.width/2.0 })
                    //Used for HStack alignment .center
                    .alignmentGuide(VerticalAlignment.center, computeValue: { _ in -20 })
                    //Used for HStack alignment .bottom
                    .alignmentGuide(.bottom, computeValue: { _  in 90 })
            }
            .border(Color.gray)
        
             Picker(selection: $index, label: Text("Choose alignment")){
                 Text("Top").tag(0)
                 Text("Center").tag(1)
                 Text("Bottom").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
           .padding(30)
        }
    }
}


struct HStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        HStackAlignmentView()
    }
}
