//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import Foundation

struct ProductType: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    private enum CodingKeys: String, CodingKey {
        case id, name, description, image, price
    }
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
}
