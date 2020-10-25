//
//  HStackAlignmentView.swift
//  Implicit Alignment Examples
//
//  Created by Mazharul Huq on 10/20/20.
//

import SwiftUI

struct HStackAlignmentView: View {
    let alignment: [VerticalAlignment] = [.top,.center, .bottom]
    @State private var index = 0
    var body: some View {
        VStack {
            HStack(alignment: alignment[index],spacing:10){
                MyRectangleView(width: 50, height: 200, color: .green)
                MyRectangleView(width: 50, height: 150, color: .orange)
                MyRectangleView(width: 50, height: 100, color: .blue)
            }.border(Color.gray)
            Picker(selection: $index, label: Text("Choose alignment")){
                Text("Top").tag(0)
                Text("Center").tag(1)
                Text("Bottom").tag(2)
           }.pickerStyle(SegmentedPickerStyle())
        }.padding()
    }
}

struct HStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        HStackAlignmentView()
    }
}
