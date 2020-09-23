//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Xiaochun Shen on 2020/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        List {
            CategoryView(imageName: "burger", categoryName: "BURGER")
            CategoryView(imageName: "pizza", categoryName: "PIZZA")
            CategoryView(imageName: "pasta", categoryName: "PASTA")
            CategoryView(imageName: "desserts", categoryName: "DeSSERTS")

        }
    }
}


struct CategoryView: View {
    var imageName: String
    var categoryName: String
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 300.0, height: 150.0)
                    .clipped()
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                Text(categoryName)
                    .font(.custom("HelveticaNeue-Medium", size: 50))
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
