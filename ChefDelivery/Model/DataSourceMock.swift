//
//  DataSourceMock.swift
//  ChefDelivery
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2, name: "Mercado", image: "mercado"),
    OrderType(id: 3, name: "Farmacia", image: "farmacia"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Descontos", image: "descontos"),
    OrderType(id: 6, name: "Gourmet", image: "gourmet"),
    OrderType(id: 7, name: "Bebidas", image: "bebidas"),
]

let storesMock: [StoreType] = [
    StoreType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"),
    StoreType(id: 2, name: "Food Court", image: "food-court-logo"),
    StoreType(id: 3, name: "Carbron", image: "carbron-logo"),
    StoreType(id: 4, name: "Padaria", image: "bakery-logo"),
    StoreType(id: 5, name: "Acai Panda", image: "acai-panda-logo"),
]
