//
//  extra.swift
//  PrinceSpecials
//
//  Created by mac on 14/05/25.
//

import SwiftUI

struct extraView : View {
    @State private var showRegisterView = false
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var auth : UserAuthentication
    
    var body: some View {
        
        
        
        NavigationStack {
            VStack {
                Button(action: {
                    print("Create Account tapped (setting state)")
                    showRegisterView = true // Change state to trigger navigation
                }) {
                    Text("Create Account")
                }
                // Other views
            }
            .navigationDestination(isPresented: $showRegisterView) {
                RegisterView() // Destination view linked to the state
            }
        }
        
        
        
    }}


struct extraView_Previews: PreviewProvider {
    static var previews: some View { extraView() }
    }
