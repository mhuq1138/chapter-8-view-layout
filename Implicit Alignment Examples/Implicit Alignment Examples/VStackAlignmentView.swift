//
//  VStackAlignmentView.swift
//  Implicit Alignment Examples
//
//  Created by Mazharul Huq on 10/20/20.
//

import SwiftUI

struct VStackAlignmentView: View {
    let alignment: [HorizontalAlignment] = [.leading,.center, .trailing]
    @State private var index = 0
    var body: some View {
        VStack {
            VStack(alignment: alignment[index],spacing:10){
                MyRectangleView(width: 300, height: 25, color: .green)
                MyRectangleView(width: 200, height: 25, color: .orange)
                MyRectangleView(width: 100, height: 25, color: .blue)
            }.border(Color.gray)
            Picker(selection: $index, label: Text("Choose alignment")){
                Text("Leading").tag(0)
                Text("Center").tag(1)
                Text("Trailing").tag(2)
           }.pickerStyle(SegmentedPickerStyle())
        }.padding()
    }
}

struct VStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        VStackAlignmentView()
    }
}
