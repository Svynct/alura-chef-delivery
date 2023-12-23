//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
}
