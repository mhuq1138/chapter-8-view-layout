//
//  DisplayMessageView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct DisplayMessageView: View {
    @State private var message = "Hello"
    var body: some View {
        VStack{
            Text(message)
                .font(.title)
                .foregroundColor(.orange)
             MessageView()
        }.onPreferenceChange(MessagePreferenceKey.self, perform: { value in
            message = value
        })
         .border(Color.gray)
    }
}

struct DisplayMessageView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayMessageView()
    }
}
 
