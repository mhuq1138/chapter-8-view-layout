//
//  GetLargestView.swift
//  PreferenceKey Examples
//
//  Created by Mazharul Huq on 10/24/20.
//

import SwiftUI

struct GetLargestView: View {
    @State private var largestSize: CGSize = .zero
    
    var body: some View {
        VStack(spacing:20){
            Text("Hello, world! from SwiftUI")
                .font(.title)
                .background(SizeGetterView())
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 150)
                .background(SizeGetterView())
            Rectangle()
                .fill(Color.green)
                .frame(width: 250, height: 50)
                .background(SizeGetterView())
            Rectangle()
                .fill(Color.blue)
                .frame(width: largestSize.width, height: largestSize.height)
        }.onPreferenceChange(SizePreferenceKey.self, perform: { value in
            for p in value{
                largestSize.width = max(largestSize.width,p.width)
                largestSize.height = max(largestSize.height,p.height)
            }
        })
         .padding()
         .border(Color.gray)
    }
}

struct GetLargestView_Previews: PreviewProvider {
    static var previews: some View {
        GetLargestView()
    }
}
