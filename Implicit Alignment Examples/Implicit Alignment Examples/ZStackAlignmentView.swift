//
//  ZStackAlignmentView.swift
//  Implicit Alignment Examples
//
//  Created by Mazharul Huq on 10/20/20.
//

import SwiftUI

struct ZStackAlignmentView: View {
    let alignment: [Alignment] = [.topLeading,.center, .bottomTrailing]
    @State private var index = 0
    var body: some View {
        VStack {
            ZStack(alignment: alignment[index]){
                MyRectangleView(width: 200, height: 180, color: .green)
                MyRectangleView(width: 170, height: 150, color: .orange)
                MyRectangleView(width: 120, height: 100, color: .blue)
            }.border(Color.gray)
            Picker(selection: $index, label: Text("Choose alignment")){
                Text("Top Leading").tag(0)
                Text("Center").tag(1)
                Text("Bottom Trailing").tag(2)
           }.pickerStyle(SegmentedPickerStyle())
        }.padding()
    }
}

struct ZStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackAlignmentView()
    }
}
