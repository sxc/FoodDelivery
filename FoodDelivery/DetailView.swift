//
//  DetailView.swift
//  FoodDelivery
//
//  Created by Xiaochun Shen on 2020/9/23.
//

import SwiftUI

struct DetailView: View {
    
    let currentCategory: Categories
    @State var showOrderSheet = false
    
    var body: some View {
        List(filterData(foodDataSet: foodData, by: currentCategory)) { food in
            DetailRow(food: food,showOrderSheet: $showOrderSheet)
        }
        .navigationTitle(Text(categoryString(for: currentCategory)))
        .listStyle(SidebarListStyle())
        .navigationBarTitleDisplayMode(.inline)
        
        .sheet(isPresented: $showOrderSheet, content: {
            OrderForm(showOrderSheet: $showOrderSheet)
        })
        .listStyle(SidebarListStyle())
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
