//
//  LeadingAlignmentView.swift
//  ZStack Layout Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct LeadingAlignmentView: View {
    var body: some View {
        ZStack(alignment: .leading){
            Image("swiftui-96x96")
            Text("Hello from SwiftUI")
                .font(.title)
                .foregroundColor(.red)
                .padding(5)
        }.border(Color.gray)
    }
}

struct LeadingAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        LeadingAlignmentView()
    }
}
