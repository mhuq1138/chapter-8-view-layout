//
//  ImagePyramidView.swift
//  Combining Stacks Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct ImagePyramidView: View {
    var body: some View {
        VStack(spacing:2){
            ForEach(1...8, id: \.self){i in
                HStack(spacing:2){
                    ForEach(1...i, id: \.self){ _ in
                       MyImageView()
                    }
                }
            }
            Color.gray
               .frame(width: 310, height: 3)
        }
    }
}

struct ImagePyramidView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePyramidView()
    }
}
