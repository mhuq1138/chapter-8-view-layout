//
//  BarChartView.swift
//  Combining Stacks Examples
//
//  Created by Mazharul Huq on 10/18/20.
//

import SwiftUI

struct BarChartView: View {
    let rainfallData:[DataView] =
               [DataView(month: "Jan", rainfall: 3.25),
                DataView(month: "Feb", rainfall: 2.45),
                DataView(month: "Mar", rainfall: 3.75),
                DataView(month: "Apr", rainfall: 2.20),
                DataView(month: "May", rainfall: 3.70),
                DataView(month: "Jun", rainfall: 5.00),
                DataView(month: "Jul", rainfall: 4.25),
                DataView(month: "Aug", rainfall: 3.15),
                DataView(month: "Sep", rainfall: 2.95),
                DataView(month: "Oct", rainfall: 3.71),
                DataView(month: "Nov", rainfall: 2.23),
                DataView(month: "Dec", rainfall: 1.80)]
    
    var body: some View {
        VStack( spacing: 5){
            Text("Monthly Rainfall")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.blue)
                .padding(.bottom)
            HStack(alignment: .bottom, spacing: 2){
                ForEach(0..<rainfallData.count){i in
                     BarWithLabelView(month: self.rainfallData[i].month,
                         rainfall: CGFloat(self.rainfallData[i].rainfall))
                }
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
