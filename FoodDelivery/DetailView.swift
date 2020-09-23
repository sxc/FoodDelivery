//
//  DetailView.swift
//  FoodDelivery
//
//  Created by Xiaochun Shen on 2020/9/23.
//

import SwiftUI

struct DetailView: View {
    
    let currentCategory: Categories
    
    var body: some View {
        List(filterData(foodDataSet: foodData, by: currentCategory)) { food in
            DetailRow(food: food)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
