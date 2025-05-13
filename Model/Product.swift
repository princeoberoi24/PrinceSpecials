//
//  Product.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import Foundation


struct Product: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
    var imageUrl: String
}
