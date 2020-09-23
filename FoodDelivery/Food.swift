//
//  Food.swift
//  FoodDelivery
//
//  Created by Xiaochun Shen on 2020/9/23.
//

import Foundation
import SwiftUI

struct Food: Identifiable {
    
    let title: String
    let price: Double
    let category: Categories
    let id = UUID()
}
