//
//  CartView.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import SwiftUI

// Assuming you have a CartItem struct defined
struct CartItem {
    var name: String
    var price: Double
    
}

// Define Cart class conforming to ObservableObject
class Cart1: ObservableObject {
    @Published var items: [CartItem] = []

func removeItem(at index: Int) {
    items.remove(at: index)
}

}

struct CartView: View { @ObservedObject var cart: Cart

    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                
                // Your Cart Content
                List {
                    ForEach(cart.items.indices, id: \.self) { index in
                        HStack {
                            Text(cart.items[index].name)
                            Spacer()
                            Text("$\(cart.items[index].price, specifier: "%.2f")")
                        }
                    }
                    .onDelete(perform: removeItems) // Move onDelete here
                }
                .navigationTitle("Your Cart")
                .toolbar {
                    Button(action: {
                        // Handle checkout process here using PaymentService
                    }) {
                        Text("Checkout")
                    }
                }
            }
        }
    }


private func removeItems(at offsets: IndexSet) {
    for index in offsets {
        cart.removeItem(at: index)
    }
}

}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleCart = Cart()
        sampleCart.items = []
        return CartView(cart: sampleCart) }
    
}
