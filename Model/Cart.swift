//
//  Cart.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import Foundation

class Cart: ObservableObject {
    @Published var items: [Product] = []


func addItem(_ product: Product) {
    items.append(product)
}

func removeItem(at index: Int) {
    items.remove(at: index)
}

func totalPrice() -> Double {
    return items.reduce(0) { $0 + $1.price }
}

}
