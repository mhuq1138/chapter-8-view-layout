//
//  MessageView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/23/20.
//

import SwiftUI

struct MessageView: View {
    @State private var message = "Hello from child view"
    var body: some View {
        ZStack(alignment: .center){
            Rectangle()
                .fill(Color.red)
            TextField("Message from child", text: $message)
                .foregroundColor(.white)
                .padding()
        }.frame(width: 300, height: 200)
         .padding()
         .preference(key: MessagePreferenceKey.self, value: message)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
