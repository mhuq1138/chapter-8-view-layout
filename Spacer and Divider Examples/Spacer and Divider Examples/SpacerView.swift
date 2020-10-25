//
//  SpacerView.swift
//  Spacer and Divider Examples
//
//  Created by Mazharul Huq on 10/19/20.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack(spacing:20){
            HStack{
                Color.blue
                    .frame(width: 100, height:80)
                Spacer()
                Color.red
                    .frame(width: 100, height:80)
            }.frame(width: 350, height: 100)
             .padding(5)
             .border(Color.gray)
            HStack{
                Color.blue
                    .frame(width: 110, height:80)
                Spacer()
                Color.green
                    .frame(width: 110, height:80)
                Spacer(minLength: 50)
                Color.red
                    .frame(width: 110, height:80)
            }.frame(width: 350, height: 100)
             .padding(5)
             .border(Color.gray)
            VStack{
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                Spacer()
                Text("from SwiftUI")
                    .font(.title)
                    .foregroundColor(.purple)
            }.frame(width: 320, height: 400)
             .border(Color.gray)
        }
        
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
