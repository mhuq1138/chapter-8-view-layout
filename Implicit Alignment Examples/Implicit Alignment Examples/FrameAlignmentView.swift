//
//  FrameAlignmentView.swift
//  Implicit Alignment Examples
//
//  Created by Mazharul Huq on 10/20/20.
//

import SwiftUI

struct FrameAlignmentView: View {
    let alignment: [Alignment] = [.topLeading,.center, .bottomTrailing]
    @State private var index = 0
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                MyRectangleView(width: 200, height: 30, color: .green)
                MyRectangleView(width: 170, height: 30, color: .orange)
                MyRectangleView(width: 120, height: 30, color: .blue)
            }.frame(width: 320, height: 250, alignment: alignment[index])
            .border(Color.gray)
            Picker(selection: $index, label: Text("Choose alignment")){
                Text("Top Leading").tag(0)
                Text("Center").tag(1)
                Text("Bottom Trailing").tag(2)
           }.pickerStyle(SegmentedPickerStyle())
        }.padding()
    }
}

struct FrameAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameAlignmentView()
    }
}
