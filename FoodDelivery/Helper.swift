//
//  Helper.swift
//  FoodDelivery
//
//  Created by Xiaochun Shen on 2020/9/23.
//

import Foundation

enum Categories {
    case burger
    case pasta
    case pizza
    case desserts
}

func filterData(foodDataSet: [Food], by category: Categories) -> [Food] {
    var filteredArray = [Food]()
    
    for food in foodDataSet {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    return filteredArray
}
