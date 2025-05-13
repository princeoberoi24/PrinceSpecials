//
//  ProductDetailView.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import SwiftUI

class Cart2: ObservableObject {
    @Published var items = [Product]()
    
    func addItem(_ product: Product) {
        items.append(product)
    }
}

struct ProductDetailView: View {
    var product: Product
    @EnvironmentObject var cart: Cart2
    
    var body: some View { ZStack { Image("Background") .resizable() .edgesIgnoringSafeArea(.all) .aspectRatio(contentMode: .fill)
        
        Text(product.description) .font(.body) .foregroundColor(.secondary) .padding([.top, .bottom], 10)
        
        VStack(alignment: .leading, spacing: 20) {
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Spacer()
            
            HStack {
                Text("Rs.\(product.price, specifier: "%.2f")")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                
                Spacer()
                
                Button(action: { cart.addItem(product) }) {
                    Text("Add to Cart")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                }
                
            }
            
            Spacer()
            
            HStack {
                Button(action: { /* Action for Share */ }) {
                    Text("Share")
                        .padding()
                        .background(Color.gray.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: { /* Action for Wishlist */ }) { Text("Add to Wishlist") .padding() .background(Color.pink.opacity(0.7)) .foregroundColor(.white) .cornerRadius(8) } } } .padding() .navigationTitle("Product Details") .navigationBarTitleDisplayMode(.inline) } }}


 struct ProductDetailView_Previews:
     PreviewProvider {
     static var previews: some View {
         let sampleProduct = Product(name: "Sample Product", description: "Sample product", price: 199, imageUrl: "https://media-hosting.imagekit.io/34fddcd330894110/Screenshot%202025-04-18%20at%205.24.53%20PM-modified%20copy-modified.png?Expires=1840372000&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=XEeYHpaE-u6hxWM~0112n13GuYXN4Ko~wpgkNKRXMVQsuBU72FA~VKUdofUuPX5eYNJni2PWm1CzxNLGChrK1mPLLqMQUFPCBbSiBXcf6Pu0SMNas1LkGlhn~FBNEuAmkijIH2xv4Zmu26p55IBxuriaUgv6q2XagylxTs73SigmXh~Q28wg~XAw-J12rP1kxflV5r9C7G9yThNlrIg07AGQY8abNfZ3ArTE0MmqnaLJGPMelQRlberi2im4rAWCPMDepVHTt7Z6p~ZvAVtL3Z~ilQVDFSxLkXgjakgTvCBnXmYVhYWCFA3Uue8UotgmISgzBHF9Atla9z8CV6CeFw__")
         return ProductDetailView(product: sampleProduct).environmentObject(Cart())
     }
 }
