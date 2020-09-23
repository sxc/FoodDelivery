//
//  DetailRow.swift
//  FoodDelivery
//
//  Created by Xiaochun Shen on 2020/9/23.
//

import SwiftUI

struct DetailRow: View {
    let food: Food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10)
                Text("\(food.price, specifier: "%2.2f") $")
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                print("Order received.")
            }) {
                Text("ORDER")
                    .foregroundColor(.white)
            }
                .frame(width: 80.0, height: 50.0)
                .background(Color.orange)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
        }
        .padding(20)
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0])
            .previewLayout(.sizeThatFits)
    }
}
