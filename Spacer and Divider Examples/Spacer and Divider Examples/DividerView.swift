//
//  DividerView.swift
//  Spacer and Divider Examples
//
//  Created by Mazharul Huq on 10/19/20.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        VStack(spacing:20){
            VStack{
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .padding()
                Divider()
                Color.red
                    .frame(width: 300, height: 200)
                    .padding()
            }.padding()
             .border(Color.gray)
            HStack{
                Image("swiftui-96x96")
                Divider()
                    .frame(width:5,height:70)
                    .background(Color.red)
                Text("Hello from swiftUI")
                    .font(.title)
                    
            }.frame(width: 340, height: 150)
             .padding(5)
             .border(Color.gray)
            
        }.padding()
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
