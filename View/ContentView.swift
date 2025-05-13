//
//  ContentView.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//
    
import SwiftUI

struct ContentView: View { var perfumes: [Perfume] = [ Perfume(name: "Virtue Rose", price: 199, imageName: "royal_essence"), Perfume(name: "Purity rose", price: 199, imageName: "royal_essence"), Perfume(name: "Seraphim Jasmine", price: 199, imageName: "royal_essence"), Perfume(name: "Elysian Jasmine", price: 199, imageName: "royal_essence"), Perfume(name: "Divine Lilly", price: 199, imageName: "royal_essence"), Perfume(name: "Rulers Lilac", price: 199, imageName: "royal_essence"), Perfume(name: "Spirit Carnation", price: 199, imageName: "royal_essence") ]

var body: some View {
    ZStack {
        Image("Background")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        
        VStack {
            Text("Welcome to the world of fragrance")
                .font(.custom("Monotype Corsiva", size: 34))
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding()

            
            
            
            ScrollView {
                
                Text("Floral Collection")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .padding(.leading, -90)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                    ForEach(perfumes, id: \.name) { perfume in
                        VStack {
                            Image(perfume.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                                .cornerRadius(10)
                            
                            Text(perfume.name)
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            Text("Rs. \(perfume.price, specifier: "%.2f")")
                                .font(.subheadline)
                                .foregroundColor(.yellow)
                        }
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(15)
                    }
                }
                .padding()
            }
        }
    }
}

}

struct Perfume {
    var name: String
    var price: Double
    var imageName: String
    
}

struct ContentView_Previews: PreviewProvider { static var previews: some View { ContentView() } }
